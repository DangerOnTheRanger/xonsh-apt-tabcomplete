def apt_completer(prefix, line, begidx, endidx, ctx):
    """
    Completes apt-get/apt-cache commands with possible
    package names.
    """
    if "apt-get" in line:
        if "install" in line:
            return search_apt(prefix)
        elif "remove" in line:
            return search_apt(prefix, installed_only=True)
    elif "apt-cache" in line:
        if "show" in line or "search" in line:
            return search_apt(prefix)
    

def search_apt(query, installed_only=False):
    results = set()
    if installed_only is False:
        apt_query = $(apt-cache --names-only search @(query))
        package_list = apt_query.split("\n")
        for line in package_list:
            # both apt-cache and dpkg leave one empty line when run, so get rid of it
            if not line.strip():
                continue
            # apt-cache queries look like package_name - description
            # so we split on the <space>- bit (the package name can't have spaces) and get
            # the first half, since that's our package name
            package_name = line[:line.index(" -")]
            # ignore matches due to package description
            if query in package_name:
                results.add(package_name)
        return results
    else:
        dpkg_query = $(dpkg --get-selections | grep @(query))
        package_list = dpkg_query.split("\n")
        for line in package_list:
            if not line.strip():
                continue
            # dpkg --get-selections splits its results with the package name on the left side,
            # while the status of the installed package is on the right
            # the weird stuff with \t is due to me not knowing if dpkg's tab-based separation
            # is consistent across platform's/debian-based distros
            package_name, status = line.split("\t" * line.count("\t"))
            # ignore deinstalled packages
            if "deinstall" in status:
                continue
            results.add(package_name)
        return results


__xonsh_completers__["auto_apt"] = apt_completer
