Yes — you can fully control **who sees what** inside an external NFS share in **Nextcloud**.
But the behavior depends on how you configure it.

There are **two different permission layers**:

1. Nextcloud access control (who can see the folder)
2. File-level permissions inside the share (who can see specific files)

Let’s break it cleanly.

---

# OPTION 1 — Control access from Nextcloud (most common)

This is the easiest and what you probably want.

Go to:

```
Settings → Administration → External Storage
```

Find your NFS entry.

You’ll see column:

```
Available for
```

You can set it to:

* specific user only
* specific group
* all users

### Example

You have:

```
user1
user2
```

If you set:

```
Available for: user1
```

Then:

* user1 sees NFS folder
* user2 does NOT see it at all

So yes — you can separate visibility.

---

# OPTION 2 — Both users can see it but only their files

If both accounts should access the same NFS but NOT each other's files:

You need subfolders + permissions.

Example NFS structure:

```
/mnt/nfs/
 ├── user1/
 └── user2/
```

Then in Nextcloud external storage add:

### Mount 1

```
Folder name: user1-share
Path: /mnt/nfs/user1
Available for: user1
```

### Mount 2

```
Folder name: user2-share
Path: /mnt/nfs/user2
Available for: user2
```

Now:

* user1 sees only their folder
* user2 sees only theirs

They never see each other.

This is the cleanest multi-user setup.

---

# OPTION 3 — Both users see everything (shared NAS)

If set to:

```
Available for: All users
```

Then yes:
**All users will see all files inside that share**

It behaves like a shared network drive.

---

# IMPORTANT: Permissions must match on NFS

If both users upload/delete files, the NFS directory must be writable by the container user (usually uid 33).

On Docker host:

```bash
chown -R 33:33 /mnt/nfs-nextcloud
chmod -R 775 /mnt/nfs-nextcloud
```

Otherwise one user may upload and the other cannot modify.

---

# Best practice recommendation (homelab style)

For 2 users:

Create folders:

```
/nfs/user1
/nfs/user2
/nfs/shared
```

Then mount 3 entries:

| Folder | Who sees it |
| ------ | ----------- |
| user1  | user1 only  |
| user2  | user2 only  |
| shared | both        |

This mimics Google Drive/Dropbox style.

---

# Quick question so I give perfect setup

What do you want exactly:

**A. Each user private storage only**
**B. Shared drive both can see**
**C. Private + shared folder** (best)
**D. Something else**

Answer with just A/B/C/D.
