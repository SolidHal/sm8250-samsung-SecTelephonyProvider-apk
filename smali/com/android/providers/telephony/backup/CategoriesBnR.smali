.class public Lcom/android/providers/telephony/backup/CategoriesBnR;
.super Ljava/lang/Object;
.source "CategoriesBnR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;,
        Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;
    }
.end annotation


# direct methods
.method private static getCategoriesInfo(Landroid/util/JsonReader;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 250
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, ""

    .line 256
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    move-object v8, v1

    move-wide v6, v2

    move v9, v4

    move v10, v9

    .line 257
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 258
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, -0x1

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x31c22dc8    # -7.9616768E8f

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eq v11, v12, :cond_3

    const v12, -0x1751f4eb

    if-eq v11, v12, :cond_2

    const/16 v12, 0xd1b

    if-eq v11, v12, :cond_1

    const v12, 0x337a8b

    if-eq v11, v12, :cond_0

    goto :goto_2

    :cond_0
    const-string v11, "name"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v5, v4

    goto :goto_2

    :cond_1
    const-string v11, "id"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const-string v11, "order_num"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v5, v13

    goto :goto_2

    :cond_3
    const-string v11, "is_enable"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v5, v14

    :cond_4
    :goto_2
    if-eqz v5, :cond_8

    if-eq v5, v4, :cond_7

    if-eq v5, v14, :cond_6

    if-eq v5, v13, :cond_5

    .line 279
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 276
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    goto :goto_1

    .line 273
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    goto :goto_1

    .line 264
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    .line 261
    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v6

    goto :goto_1

    :cond_9
    cmp-long v1, v6, v2

    if-lez v1, :cond_a

    .line 284
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 285
    new-instance v1, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;-><init>(JLjava/lang/String;II)V

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    .line 290
    :cond_b
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCategoriesInfo exception e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TP/CategoriesBnR"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0
.end method

.method private static getCategoryIdByRowId(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 2

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT _id FROM categories WHERE rowid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 537
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 538
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 539
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 541
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 537
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    :cond_2
    if-eqz p0, :cond_3

    .line 541
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private static getMaxOrder(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2

    const-string v0, "SELECT MAX(order_num) FROM categories"

    const/4 v1, 0x0

    .line 550
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 551
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 552
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 554
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_1

    .line 550
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0

    :cond_2
    if-eqz p0, :cond_3

    .line 554
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static getThreadInfoList(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;",
            ">;)I"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    const-string v2, "TP/CategoriesBnR"

    if-nez p0, :cond_0

    const-string p0, "category_restore json does not exist"

    .line 163
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 p0, 0x1

    .line 167
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 169
    :try_start_2
    new-instance v4, Landroid/util/JsonReader;

    invoke-direct {v4, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    :try_start_3
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    .line 172
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "threads_info"

    .line 173
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "title : threads_info"

    .line 174
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginArray()V

    .line 181
    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 182
    new-instance v5, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;

    invoke-direct {v5}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;-><init>()V

    .line 183
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    .line 186
    :goto_1
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 187
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    .line 188
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v9, "thread_type"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v8, p0

    goto :goto_2

    :sswitch_1
    const-string v9, "im_type"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v8, 0x5

    goto :goto_2

    :sswitch_2
    const-string v9, "session_id"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_3
    const-string v9, "categories"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v8, 0x7

    goto :goto_2

    :sswitch_4
    const-string v9, "conversation_type"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v8, 0x6

    goto :goto_2

    :sswitch_5
    const-string v9, "session_id2"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v8, 0x4

    goto :goto_2

    :sswitch_6
    const-string v9, "recipients"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_7
    const-string v9, "thread_id"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_2

    move v8, v1

    :cond_2
    :goto_2
    const-string v7, "null"

    const/4 v9, 0x0

    packed-switch v8, :pswitch_data_0

    .line 224
    :try_start_4
    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 221
    :pswitch_0
    invoke-static {v4}, Lcom/android/providers/telephony/backup/CategoriesBnR;->getCategoriesInfo(Landroid/util/JsonReader;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 218
    :pswitch_1
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->setConversationType(I)V

    goto :goto_1

    .line 215
    :pswitch_2
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->setImType(I)V

    goto/16 :goto_1

    .line 207
    :pswitch_3
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 208
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 211
    :cond_3
    invoke-virtual {v5, v8}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->setSessionId2(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 209
    :cond_4
    :goto_3
    invoke-virtual {v5, v9}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->setSessionId2(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 199
    :pswitch_4
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 200
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    .line 203
    :cond_5
    invoke-virtual {v5, v8}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->setSessionId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 201
    :cond_6
    :goto_4
    invoke-virtual {v5, v9}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->setSessionId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 196
    :pswitch_5
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->setRecipients(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 193
    :pswitch_6
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->setThreadType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 190
    :pswitch_7
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->setThreadId(J)V

    goto/16 :goto_1

    .line 228
    :cond_7
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    .line 230
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 231
    invoke-virtual {v5, v6}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->setCategoriesInfo(Ljava/util/ArrayList;)V

    .line 232
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 235
    :cond_8
    invoke-virtual {v4}, Landroid/util/JsonReader;->endArray()V

    .line 236
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 237
    :try_start_5
    invoke-virtual {v4}, Landroid/util/JsonReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_8

    :cond_9
    :try_start_8
    const-string p1, "fail()"

    .line 176
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 237
    :try_start_9
    invoke-virtual {v4}, Landroid/util/JsonReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    return p0

    :catchall_0
    move-exception p1

    .line 167
    :try_start_c
    invoke-virtual {v4}, Landroid/util/JsonReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    :try_start_d
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_f
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    :try_start_11
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    :catch_0
    move-exception p1

    .line 238
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThreadInfoList exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p0

    :goto_8
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x5d1dd090 -> :sswitch_7
        -0x14b32e86 -> :sswitch_6
        -0x151f2b2 -> :sswitch_5
        0x2d27c576 -> :sswitch_4
        0x4d47461c -> :sswitch_3
        0x630ddf64 -> :sswitch_2
        0x71dfd175 -> :sswitch_1
        0x7319704f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static loadCategoriesInfo(Landroid/database/sqlite/SQLiteDatabase;)Landroid/util/SparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;",
            ">;"
        }
    .end annotation

    .line 481
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const-string v1, "SELECT _id, name, is_enable, order_num FROM categories ORDER BY order_num ASC"

    const/4 v2, 0x0

    .line 487
    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 488
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 489
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 490
    new-instance v8, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x2

    .line 491
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object v2, v8

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;-><init>(JLjava/lang/String;II)V

    .line 493
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 487
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v0

    :cond_1
    if-eqz p0, :cond_2

    .line 495
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method private static loadCategoriesName(Landroid/database/sqlite/SQLiteDatabase;)Landroid/util/LongSparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    const-string v1, "SELECT _id, name FROM categories ORDER BY order_num ASC"

    const/4 v2, 0x0

    .line 324
    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 325
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 326
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 327
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 324
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v0

    :cond_1
    if-eqz p0, :cond_2

    .line 330
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method private static loadThreadCategoriesInfo(Landroid/database/sqlite/SQLiteDatabase;)Landroid/util/LongSparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Landroid/util/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 504
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    const-string v1, "SELECT thread_id, category_id FROM thread_categories"

    const/4 v2, 0x0

    .line 508
    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 509
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 510
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 511
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gtz v5, :cond_0

    const-string v3, "TP/CategoriesBnR"

    .line 514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadThreadCategoriesInfo, threadId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 520
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 521
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 523
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :goto_1
    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_2

    .line 508
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v0

    :cond_3
    if-eqz p0, :cond_4

    .line 527
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method private static restoreCategories(Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return v1

    .line 339
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 342
    invoke-static {v2}, Lcom/android/providers/telephony/backup/CategoriesBnR;->getMaxOrder(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 343
    invoke-static {v2}, Lcom/android/providers/telephony/backup/CategoriesBnR;->loadCategoriesName(Landroid/database/sqlite/SQLiteDatabase;)Landroid/util/LongSparseArray;

    move-result-object v3

    .line 345
    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4}, Landroid/util/LongSparseArray;-><init>()V

    .line 346
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 347
    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6}, Landroid/util/LongSparseArray;-><init>()V

    .line 348
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 351
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v13, "TP/CategoriesBnR"

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;

    .line 353
    invoke-virtual {v9}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->getThreadId()J

    move-result-wide v14

    .line 354
    invoke-virtual {v9}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->getRecipients()Ljava/lang/String;

    move-result-object v1

    .line 355
    new-instance v10, Ljava/util/HashSet;

    const-string v11, ";"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-virtual {v9}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->getCategoriesInfo()Ljava/util/ArrayList;

    move-result-object v11

    .line 361
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    .line 362
    invoke-virtual {v12}, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->getId()J

    move-result-wide v10

    move/from16 v27, v0

    .line 363
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v6, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object/from16 v11, v17

    move-object/from16 v10, v18

    move/from16 v0, v27

    goto :goto_1

    .line 368
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v8

    const-string v8, "backup categoryName : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v12}, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->indexOfValueByValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    move-object/from16 v19, v9

    .line 371
    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v3

    const-string v3, "search categoryId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v20, 0x0

    cmp-long v0, v8, v20

    if-lez v0, :cond_3

    .line 375
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v10, v11, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object/from16 v29, v3

    move-object/from16 v19, v9

    const-wide/16 v20, 0x0

    .line 380
    :cond_3
    invoke-virtual {v12}, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->getOrderNum()I

    move-result v0

    int-to-long v8, v0

    .line 381
    invoke-virtual {v7, v8, v9, v12}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_2
    move-object/from16 v11, v17

    move-object/from16 v10, v18

    move-object/from16 v9, v19

    move/from16 v0, v27

    move-object/from16 v8, v28

    move-object/from16 v3, v29

    goto/16 :goto_1

    :cond_4
    move/from16 v27, v0

    move-object/from16 v29, v3

    move-object/from16 v28, v8

    move-object/from16 v19, v9

    move-object/from16 v18, v10

    const-wide/16 v20, 0x0

    cmp-long v0, v14, v20

    if-gtz v0, :cond_5

    :goto_3
    move/from16 v0, v27

    move-object/from16 v8, v28

    move-object/from16 v3, v29

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 387
    :cond_5
    invoke-virtual {v5, v14, v15, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 390
    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->getThreadType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "im"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 391
    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual/range {v19 .. v19}, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->getConversationType()I

    move-result v25

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const-string v20, ""

    const-string v21, ""

    const-string v24, "im"

    move-object/from16 v17, p0

    move-object/from16 v19, v0

    .line 393
    invoke-static/range {v17 .. v26}, Lcom/android/providers/telephony/backup/BnRUtils;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;IZ)J

    move-result-wide v0

    const-wide/16 v10, 0x0

    move-wide v8, v0

    move-object/from16 v0, p0

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    .line 395
    invoke-static {v0, v1, v3, v3}, Lcom/android/providers/telephony/backup/BnRUtils;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;ZI)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    :goto_4
    cmp-long v1, v8, v10

    if-lez v1, :cond_7

    .line 399
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v14, v15, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread mapping old/new : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 402
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to find threadId, old : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    move/from16 v27, v0

    .line 407
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/4 v3, 0x0

    if-ge v1, v0, :cond_a

    .line 409
    invoke-virtual {v7, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    .line 410
    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;

    .line 411
    invoke-virtual {v8}, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->getId()J

    move-result-wide v9

    .line 412
    invoke-virtual {v8}, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->getName()Ljava/lang/String;

    move-result-object v11

    .line 413
    invoke-virtual {v8}, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->getIsEnable()I

    move-result v8

    .line 415
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "name"

    .line 416
    invoke-virtual {v12, v14, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "is_enable"

    invoke-virtual {v12, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v8, 0x1

    add-int/lit8 v27, v27, 0x1

    .line 418
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v11, "order_num"

    invoke-virtual {v12, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "categories"

    .line 420
    invoke-virtual {v2, v8, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    const-wide/16 v14, 0x0

    cmp-long v3, v11, v14

    if-lez v3, :cond_9

    .line 423
    invoke-static {v2, v11, v12}, Lcom/android/providers/telephony/backup/CategoriesBnR;->getCategoryIdByRowId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v11

    .line 424
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v9, v10, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_6

    :cond_9
    const-string v3, "restoreCategoryByFile fail to insert category"

    .line 426
    invoke-static {v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 430
    :cond_a
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v1, :cond_14

    .line 432
    invoke-virtual {v5, v7}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    .line 435
    invoke-virtual {v4, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 436
    invoke-virtual {v4, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_8

    :cond_b
    const-wide/16 v10, 0x0

    :goto_8
    const-wide/16 v14, 0x0

    cmp-long v0, v10, v14

    if-gtz v0, :cond_d

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail to find thread by thradIdMap, key : "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/16 v16, 0x1

    const-wide/16 v17, 0x0

    goto/16 :goto_d

    .line 443
    :cond_d
    invoke-virtual {v5, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 444
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 445
    invoke-virtual {v6, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v17, 0x0

    cmp-long v0, v14, v17

    if-gez v0, :cond_f

    const-string v0, "fail to find categoryId by categoryIdMap"

    .line 448
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_f
    const-string v0, "select count(*) from thread_categories where thread_id = ? and category_id = ?"

    const/4 v9, 0x2

    :try_start_0
    new-array v9, v9, [Ljava/lang/String;

    .line 455
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, v9, v17

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v16, 0x1

    :try_start_1
    aput-object v12, v9, v16

    .line 454
    invoke-virtual {v2, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v9, :cond_11

    .line 456
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_11

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "alreay exist catagory : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", threadId : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_e

    .line 460
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v12, v0

    if-eqz v9, :cond_10

    .line 454
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v9, v0

    :try_start_5
    invoke-virtual {v12, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_a
    throw v12

    :cond_11
    if-eqz v9, :cond_12

    .line 460
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    const/16 v16, 0x1

    .line 461
    :goto_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "query thread_categories faile e : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_12
    :goto_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 465
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v12, "thread_id"

    invoke-virtual {v0, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 466
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v12, "category_id"

    invoke-virtual {v0, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "thread_categories"

    .line 468
    invoke-virtual {v2, v9, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    const-wide/16 v17, 0x0

    cmp-long v0, v14, v17

    if-lez v0, :cond_13

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreCategoryByFile insert thread_categories : "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_13
    const-string v0, "restoreCategoryByFile fail to insert thread_categories"

    .line 472
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_14
    const/4 v7, 0x0

    return v7
.end method

.method static restoreCategories(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "fail : insert categories"

    const-string v4, ", name : "

    const-string v5, "name"

    const-string v0, "_id"

    const-string v6, "category_id"

    const-string v7, "thread_id"

    .line 559
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/CategoriesBnR;->loadCategoriesInfo(Landroid/database/sqlite/SQLiteDatabase;)Landroid/util/SparseArray;

    move-result-object v8

    .line 560
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/CategoriesBnR;->loadThreadCategoriesInfo(Landroid/database/sqlite/SQLiteDatabase;)Landroid/util/LongSparseArray;

    move-result-object v9

    const-string v10, "categories"

    const/4 v11, 0x0

    .line 563
    invoke-virtual {v2, v10, v11, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v12, "thread_categories"

    .line 564
    invoke-virtual {v2, v12, v11, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 566
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 567
    new-instance v14, Landroid/util/LongSparseArray;

    invoke-direct {v14}, Landroid/util/LongSparseArray;-><init>()V

    .line 568
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    const-string v11, "TP/CategoriesBnR"

    move-object/from16 v17, v9

    const-string v9, "insert original categories"

    .line 571
    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v18, 0x0

    :try_start_0
    const-string v9, "SELECT * FROM categories ORDER BY _id ASC"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v20, v8

    const/4 v8, 0x0

    .line 572
    :try_start_1
    invoke-virtual {v1, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v9, :cond_2

    .line 573
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 574
    invoke-static {v9}, Lcom/android/providers/telephony/backup/BnRUtils;->getContentValuesWithId(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v8

    .line 575
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v22, v15

    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    int-to-long v6, v15

    .line 576
    :try_start_4
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v25, v0

    move-object/from16 v24, v5

    const/4 v5, 0x0

    .line 578
    :try_start_5
    invoke-virtual {v2, v10, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    cmp-long v5, v0, v18

    if-lez v5, :cond_0

    move-object v5, v9

    .line 581
    :try_start_6
    invoke-static {v2, v0, v1}, Lcom/android/providers/telephony/backup/CategoriesBnR;->getCategoryIdByRowId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v26, v10

    .line 582
    :try_start_7
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v14, v6, v7, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 583
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v15, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "categories rowId :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", newId :"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_0
    move-object v5, v9

    move-object/from16 v26, v10

    .line 586
    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    move-object/from16 v1, p0

    move-object v9, v5

    move-object/from16 v6, v21

    move-object/from16 v15, v22

    move-object/from16 v7, v23

    move-object/from16 v5, v24

    move-object/from16 v0, v25

    move-object/from16 v10, v26

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v24, v5

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    :goto_2
    move-object v5, v9

    :goto_3
    move-object/from16 v26, v10

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object v5, v9

    move-object/from16 v26, v10

    move-object/from16 v22, v15

    :goto_4
    move-object v1, v0

    if-eqz v5, :cond_1

    .line 572
    :try_start_8
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object v5, v0

    :try_start_9
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_5
    throw v1

    :cond_2
    move-object/from16 v24, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object v5, v9

    move-object/from16 v26, v10

    move-object/from16 v22, v15

    if-eqz v5, :cond_3

    .line 589
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v7

    move-object/from16 v20, v8

    :goto_6
    move-object/from16 v26, v10

    move-object/from16 v22, v15

    .line 590
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backuped categories e : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_8
    :try_start_a
    const-string v0, "SELECT * FROM thread_categories ORDER BY _id ASC"

    move-object/from16 v1, p0

    const/4 v5, 0x0

    .line 593
    invoke-virtual {v1, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :goto_9
    if-eqz v1, :cond_9

    .line 594
    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 595
    invoke-static {v1}, Lcom/android/providers/telephony/backup/BnRUtils;->getContentValues(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    move-object/from16 v5, v23

    .line 597
    :try_start_c
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v8, "xms"

    .line 598
    invoke-static {v8, v6, v7}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadIdOnlyBackupMap(Ljava/lang/String;J)J

    move-result-wide v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    cmp-long v10, v8, v18

    if-gez v10, :cond_4

    :try_start_d
    const-string v8, "im"

    .line 600
    invoke-static {v8, v6, v7}, Lcom/android/providers/telephony/backup/BnRUtils;->getThreadIdOnlyBackupMap(Ljava/lang/String;J)J

    move-result-wide v8

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object v3, v0

    move-object v10, v4

    move-object/from16 v23, v5

    move-object/from16 v6, v21

    :goto_a
    move-object/from16 v7, v22

    goto/16 :goto_11

    :cond_4
    :goto_b
    cmp-long v6, v8, v18

    if-gtz v6, :cond_5

    const-string v0, "fail : can not find newThreadId"

    .line 604
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object/from16 v23, v5

    goto :goto_9

    .line 607
    :cond_5
    :try_start_e
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    move-object/from16 v6, v21

    .line 609
    :try_start_f
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    move-object v10, v4

    move-object/from16 v23, v5

    :try_start_10
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 610
    invoke-virtual {v14, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    if-nez v7, :cond_6

    :try_start_11
    const-string v0, "fail : can not find newCategoryId"

    .line 611
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    move-object/from16 v21, v6

    :goto_c
    move-object v4, v10

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object v3, v0

    goto :goto_a

    .line 615
    :cond_6
    :try_start_12
    invoke-virtual {v14, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 616
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v7, 0x0

    .line 617
    invoke-virtual {v2, v12, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v27

    cmp-long v0, v27, v18

    if-lez v0, :cond_7

    .line 620
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    move-object/from16 v7, v22

    :try_start_13
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "threadId : "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", CategoryId : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_7
    move-object/from16 v7, v22

    .line 623
    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :goto_d
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    goto :goto_c

    :catchall_9
    move-exception v0

    goto :goto_10

    :catchall_a
    move-exception v0

    goto :goto_f

    :catchall_b
    move-exception v0

    move-object v10, v4

    move-object/from16 v23, v5

    goto :goto_f

    :catchall_c
    move-exception v0

    move-object v10, v4

    move-object/from16 v23, v5

    goto :goto_e

    :catchall_d
    move-exception v0

    move-object v10, v4

    :goto_e
    move-object/from16 v6, v21

    :goto_f
    move-object/from16 v7, v22

    :goto_10
    move-object v3, v0

    :goto_11
    if-eqz v1, :cond_8

    .line 593
    :try_start_14
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    goto :goto_12

    :catchall_e
    move-exception v0

    move-object v1, v0

    :try_start_15
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_12
    throw v3

    :cond_9
    move-object v10, v4

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    if-eqz v1, :cond_a

    .line 626
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    goto :goto_14

    :catch_3
    move-exception v0

    goto :goto_13

    :catch_4
    move-exception v0

    move-object v10, v4

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    .line 627
    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backuped thread_categories e : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_14
    const-string v0, "insert old categories"

    .line 631
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 633
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/backup/CategoriesBnR;->getMaxOrder(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 634
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v3, :cond_10

    move-object/from16 v8, v20

    .line 636
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 637
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;

    if-nez v9, :cond_c

    const-string v9, "categoriesInfo.get(key) is null"

    .line 639
    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_16
    move/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v22, v12

    move-object/from16 v25, v13

    goto/16 :goto_17

    .line 642
    :cond_c
    invoke-virtual {v9}, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->getId()J

    move-result-wide v14

    .line 643
    invoke-virtual {v9}, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 645
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_d

    const-string v4, "fail : category name is empty"

    .line 646
    invoke-static {v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 647
    :cond_d
    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_e

    .line 648
    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 649
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v14, v15, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_16

    .line 650
    :cond_e
    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_b

    move/from16 v20, v3

    .line 651
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v21, v8

    move-object/from16 v8, v24

    .line 652
    invoke-virtual {v3, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-virtual {v9}, Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;->getIsEnable()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v8, "is_enable"

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v1, v1, 0x1

    .line 654
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "order_num"

    invoke-virtual {v3, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v22, v12

    move-object/from16 v25, v13

    move-object/from16 v8, v26

    const/4 v9, 0x0

    .line 656
    invoke-virtual {v2, v8, v9, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    cmp-long v3, v12, v18

    if-lez v3, :cond_f

    move-object/from16 v26, v8

    .line 658
    invoke-static {v2, v12, v13}, Lcom/android/providers/telephony/backup/CategoriesBnR;->getCategoryIdByRowId(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v8

    .line 659
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 660
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "categories rowId : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", newId : "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_f
    move-object/from16 v26, v8

    const-string v3, "fail : restore categories"

    .line 662
    invoke-static {v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v20

    move-object/from16 v20, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v25

    goto/16 :goto_15

    :cond_10
    move-object/from16 v22, v12

    .line 667
    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v1, :cond_15

    move-object/from16 v3, v17

    .line 669
    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    .line 670
    invoke-virtual {v3, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 672
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_14

    .line 673
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 674
    invoke-virtual {v0, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_13

    .line 675
    invoke-virtual {v0, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 676
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 677
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "alreay exist catagory : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", threadId : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 680
    :cond_11
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 681
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v15, v23

    invoke-virtual {v10, v15, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 682
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move/from16 p0, v1

    move-object/from16 v14, v22

    const/4 v1, 0x0

    .line 684
    invoke-virtual {v2, v14, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v16

    cmp-long v10, v16, v18

    if-lez v10, :cond_12

    .line 686
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_categories threadId : "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", category : "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_12
    const-string v1, "fail : restore thread_categories"

    .line 688
    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_13
    move/from16 p0, v1

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoredIdMap.get(categoryId) is null, categoryId : "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    move/from16 v1, p0

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    goto/16 :goto_19

    :cond_14
    move/from16 p0, v1

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p0

    move-object/from16 v17, v3

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    goto/16 :goto_18

    :cond_15
    return-void
.end method

.method static restoreCategoriesByFile(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-static {p1, v0}, Lcom/android/providers/telephony/backup/CategoriesBnR;->getThreadInfoList(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    const-string v1, "TP/CategoriesBnR"

    if-eqz p1, :cond_0

    const-string p0, "failed getThreadInfoList"

    .line 150
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 153
    :cond_0
    invoke-static {p0, v0}, Lcom/android/providers/telephony/backup/CategoriesBnR;->restoreCategories(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result p0

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreCategoriesByFile result : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
