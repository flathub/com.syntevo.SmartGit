# SmartGit

[SmartGit][uri-smartgit-home] is a powerful, cross-platform Git GUI that works
the way you do.

[uri-smartgit-home]: https://www.smartgit.dev/ "The Smart Way to Git"

## Local Development — Build and Install Flatpak

Install `flatpak`, `flatpak-builder` and `git` packages, then run:

```shell
# Ensure Flathub remote exists for the current user
$ flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo

$ git clone https://github.com/flathub/com.syntevo.SmartGit.git
$ cd com.syntevo.SmartGit/

$ flatpak-builder build --force-clean --install-deps-from=flathub --install --user com.syntevo.SmartGit.yaml
```

To uninstall:

```shell
$ flatpak uninstall --delete-data --user com.syntevo.SmartGit
```

To clean up build artifacts and Flatpak state:

```shell
$ rm --force --recursive .flatpak-builder/ build/
$ flatpak uninstall --unused --user
$ flatpak remote-delete --user flathub
```
