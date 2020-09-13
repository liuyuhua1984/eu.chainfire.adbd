.class public final Leu/chainfire/adbd/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 12

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Leu/chainfire/adbd/a;->a()Z

    move-result v7

    invoke-static {}, Leu/chainfire/adbd/a;->d()Z

    move-result v8

    invoke-static {}, Leu/chainfire/adbd/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v0, v5, :cond_0

    move v0, v1

    :goto_0
    invoke-static {}, Leu/chainfire/adbd/a;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-gt v5, v6, :cond_3

    const-string v5, "adbd.15.png"

    invoke-static {p0, v5}, Leu/chainfire/adbd/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :goto_2
    if-eqz v6, :cond_2

    const-string v5, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-gt v5, v6, :cond_4

    const-string v5, "adbd.16.png"

    invoke-static {p0, v5}, Leu/chainfire/adbd/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    goto :goto_2

    :cond_4
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x14

    if-gt v5, v6, :cond_5

    const-string v5, "adbd.17.png"

    invoke-static {p0, v5}, Leu/chainfire/adbd/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    goto :goto_2

    :cond_5
    const-string v5, "adbd.21.png"

    invoke-static {p0, v5}, Leu/chainfire/adbd/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    goto :goto_2

    :cond_6
    new-array v5, v1, [Ljava/lang/String;

    const-string v9, "stop adbd"

    aput-object v9, v5, v2

    invoke-static {v5}, Leu/chainfire/adbd/u;->a([Ljava/lang/String;)Ljava/util/List;

    const-wide/16 v10, 0x3e8

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v2

    :goto_3
    const/16 v9, 0x19

    if-lt v5, v9, :cond_b

    :cond_7
    :goto_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "mount -o rw,remount / /"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "rm /sbin/adbd.original"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "cat /sbin/adbd > /sbin/adbd.original"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "chown 0.0 /sbin/adbd.original"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "chmod 644 /sbin/adbd.original"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "rm /sbin/adbd"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_c

    if-nez v0, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cat \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\" > /adbd"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "chown 0.0 /adbd"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "chmod 0750 /adbd"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "ln -s /adbd /sbin/adbd"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    if-eqz v0, :cond_8

    const-string v6, "cat /system/bin/sh > /sbin/adbdsh"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "chown 0.0 /sbin/adbdsh"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "chmod 0750 /sbin/adbdsh"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v6, "mount -o ro,remount / /"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "permissive init_shell"

    aput-object v0, v6, v2

    const-string v0, "allow adbd adbd process setcurrent"

    aput-object v0, v6, v1

    const-string v0, "allow adbd init process dyntransition"

    aput-object v0, v6, v4

    const-string v0, "allow servicemanager { init_shell zygote } dir search"

    aput-object v0, v6, v3

    const/4 v0, 0x4

    const-string v1, "allow servicemanager { init_shell zygote } file { read open }"

    aput-object v1, v6, v0

    const/4 v0, 0x5

    const-string v1, "allow servicemanager { init_shell zygote } process getattr"

    aput-object v1, v6, v0

    const/4 v0, 0x6

    const-string v1, "allow system_server init_shell binder { transfer call }"

    aput-object v1, v6, v0

    const/4 v0, 0x7

    const-string v1, "allow zygote { servicemanager system_server } binder call"

    aput-object v1, v6, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v6

    move v0, v2

    :goto_6
    if-lt v0, v4, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "/system/xbin/supolicy --live"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v7, :cond_a

    const-string v0, "start adbd"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {v5}, Leu/chainfire/adbd/u;->a(Ljava/util/List;)Ljava/util/List;

    invoke-static {}, Leu/chainfire/adbd/a;->b()Z

    move-result v0

    if-nez v0, :cond_e

    move v1, v3

    goto/16 :goto_1

    :cond_b
    :try_start_1
    invoke-static {}, Leu/chainfire/adbd/a;->a()Z

    move-result v9

    if-eqz v9, :cond_7

    const-wide/16 v10, 0x64

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "cat \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\" > /sbin/adbd"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "chown 0.0 /sbin/adbd"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "chmod 0750 /sbin/adbd"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_d
    aget-object v8, v6, v0

    const-string v9, " \""

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    move v1, v2

    goto/16 :goto_1

    :catch_0
    move-exception v5

    goto/16 :goto_4
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 6

    new-instance v0, Leu/chainfire/adbd/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leu/chainfire/adbd/b;-><init>(B)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Leu/chainfire/adbd/b;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static a()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "init.svc.adbd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getprop "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/adbd/u;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_1
    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public static b()Z
    .locals 3

    const-string v0, "ls /sbin/adbd*"

    invoke-static {v0}, Leu/chainfire/adbd/u;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ".original"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c()I
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Leu/chainfire/adbd/a;->a()Z

    move-result v3

    invoke-static {}, Leu/chainfire/adbd/a;->d()Z

    move-result v4

    invoke-static {}, Leu/chainfire/adbd/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v0, v5, :cond_0

    move v0, v1

    :goto_0
    invoke-static {}, Leu/chainfire/adbd/a;->b()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "stop adbd"

    aput-object v5, v1, v2

    invoke-static {v1}, Leu/chainfire/adbd/u;->a([Ljava/lang/String;)Ljava/util/List;

    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    :goto_2
    const/16 v5, 0x19

    if-lt v1, v5, :cond_6

    :cond_2
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "mount -o rw,remount / /"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "rm /sbin/adbd"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    const-string v4, "rm /adbd"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "mount -o rw,remount /system /system"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/xbin/adbd"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "mount -o ro,remount /system /system"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v0, :cond_4

    const-string v0, "rm /sbin/adbdsh"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v0, "cat /sbin/adbd.original > /sbin/adbd"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "rm /sbin/adbd.original"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "chown 0.0 /sbin/adbd"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "chmod 750 /sbin/adbd"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mount -o ro,remount / /"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_5

    const-string v0, "start adbd"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v1}, Leu/chainfire/adbd/u;->a(Ljava/util/List;)Ljava/util/List;

    invoke-static {}, Leu/chainfire/adbd/a;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    :try_start_1
    invoke-static {}, Leu/chainfire/adbd/a;->a()Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method private static d()Z
    .locals 5

    const/4 v1, 0x1

    const-string v0, "ro.build.selinux"

    invoke-static {v0}, Leu/chainfire/adbd/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/fs/selinux/enforce"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v2

    const/16 v4, 0x31

    if-ne v2, v4, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
