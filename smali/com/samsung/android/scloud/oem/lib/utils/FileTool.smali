.class public final Lcom/samsung/android/scloud/oem/lib/utils/FileTool;
.super Ljava/lang/Object;
.source "FileTool.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static fileCopy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "fileCopy() failed"

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileCopy(), from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileTool"

    invoke-static {v2, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_e

    .line 227
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 230
    :cond_0
    invoke-virtual {v1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    const/4 v4, 0x1

    if-nez p1, :cond_c

    const/16 p1, 0x400

    new-array v5, p1, [B

    const/4 v6, 0x0

    .line 235
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 236
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    :goto_0
    :try_start_2
    invoke-virtual {v7, v5, v3, p1}, Ljava/io/FileInputStream;->read([BII)I

    move-result p0

    const/4 v6, -0x1

    if-eq p0, v6, :cond_1

    .line 239
    invoke-virtual {v8, v5, v3, p0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 253
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 254
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 256
    :cond_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 258
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v4

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v8, v6

    :goto_2
    move-object v6, v7

    goto :goto_9

    :catch_3
    move-exception p0

    move-object v8, v6

    :goto_3
    move-object v6, v7

    goto :goto_5

    :catch_4
    move-exception p0

    move-object v8, v6

    :goto_4
    move-object v6, v7

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v8, v6

    goto :goto_9

    :catch_5
    move-exception p0

    move-object v8, v6

    .line 249
    :goto_5
    :try_start_4
    invoke-static {v2, v0, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 253
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 254
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    if-eqz v6, :cond_4

    .line 256
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_4
    if-eqz v8, :cond_5

    .line 258
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_6

    :catch_6
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_6
    return v3

    :catch_7
    move-exception p0

    move-object v8, v6

    .line 244
    :goto_7
    :try_start_6
    invoke-static {v2, v0, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 253
    :try_start_7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 254
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_6
    if-eqz v6, :cond_7

    .line 256
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_7
    if-eqz v8, :cond_8

    .line 258
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_8

    :catch_8
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_8
    return v3

    :catchall_3
    move-exception p0

    .line 253
    :goto_9
    :try_start_8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 254
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_9
    if-eqz v6, :cond_a

    .line 256
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_a
    if-eqz v8, :cond_b

    .line 258
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    move-exception p1

    .line 260
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 261
    :cond_b
    :goto_a
    throw p0

    .line 264
    :cond_c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_d
    return v4

    :cond_e
    const-string p0, "oldFile is null or not file~!"

    .line 269
    invoke-static {v2, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public static openFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openFile !!  path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTool"

    invoke-static {v1, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/"

    .line 275
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 276
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 277
    aget-object v0, v0, v2

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filename !!  uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/high16 v2, 0x38000000

    .line 283
    :try_start_0
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
