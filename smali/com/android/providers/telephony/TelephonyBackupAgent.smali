.class public Lcom/android/providers/telephony/TelephonyBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "TelephonyBackupAgent.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;,
        Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;,
        Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;,
        Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;
    }
.end annotation


# static fields
.field static final ALL_THREADS_URI:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static ATTACHMENT_DATA_PATH:Ljava/lang/String; = "/app_parts/"

.field static final MMS_ADDR_PROJECTION:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MMS_PROJECTION:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MMS_TEXT_PROJECTION:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PROJECTION_ID:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SINGLE_CANONICAL_ADDRESS_URI:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SMS_PROJECTION:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final SMS_RECIPIENTS_PROJECTION:[Ljava/lang/String;

.field private static THREAD_ARCHIVED_IDX:I = 0x0

.field private static THREAD_ARCHIVED_PROJECTION:[Ljava/lang/String; = null

.field static final THREAD_ID_CONTENT_URI:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final UNKNOWN_SENDER:Ljava/lang/String; = "\u02bcUNKNOWN_SENDER!\u02bc"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final sDefaultValuesAddr:Landroid/content/ContentValues;

.field private static final sDefaultValuesAttachments:Landroid/content/ContentValues;

.field private static sDefaultValuesMms:Landroid/content/ContentValues; = null

.field private static sDefaultValuesSms:Landroid/content/ContentValues; = null

.field private static volatile sIsRestoring:Z = false

.field static final sSmilTextOnly:Ljava/lang/String; = "<smil><head><layout><root-layout/><region id=\"Text\" top=\"0\" left=\"0\" height=\"100%%\" width=\"100%%\"/></layout></head><body>%s</body></smil>"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final sSmilTextPart:Ljava/lang/String; = "<par dur=\"5000ms\"><text src=\"%s\" region=\"Text\" /></par>"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mBytesOverQuota:J

.field mCacheGetOrCreateThreadId:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mCacheRecipientsByThread:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field mMaxMsgPerFile:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mPhone2subId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubId2phone:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadArchived:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUnknownSenderThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "_id"

    const-string v1, "sub_id"

    const-string v2, "address"

    const-string v3, "body"

    const-string v4, "subject"

    const-string v5, "date"

    const-string v6, "date_sent"

    const-string v7, "status"

    const-string v8, "type"

    const-string v9, "thread_id"

    const-string v10, "read"

    .line 193
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->SMS_PROJECTION:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "recipient_ids"

    .line 208
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/telephony/TelephonyBackupAgent;->SMS_RECIPIENTS_PROJECTION:[Ljava/lang/String;

    const-string v2, "_id"

    const-string v3, "sub_id"

    const-string v4, "sub"

    const-string v5, "sub_cs"

    const-string v6, "date"

    const-string v7, "date_sent"

    const-string v8, "m_type"

    const-string v9, "v"

    const-string v10, "msg_box"

    const-string v11, "ct_l"

    const-string v12, "thread_id"

    const-string v13, "tr_id"

    const-string v14, "read"

    .line 215
    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/telephony/TelephonyBackupAgent;->MMS_PROJECTION:[Ljava/lang/String;

    const-string v1, "type"

    const-string v2, "address"

    const-string v3, "charset"

    .line 234
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/providers/telephony/TelephonyBackupAgent;->MMS_ADDR_PROJECTION:[Ljava/lang/String;

    const-string v4, "text"

    const-string v5, "chset"

    .line 243
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/providers/telephony/TelephonyBackupAgent;->MMS_TEXT_PROJECTION:[Ljava/lang/String;

    .line 264
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v4, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    .line 265
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v4, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    .line 266
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v4, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesAddr:Landroid/content/ContentValues;

    .line 267
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v4, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesAttachments:Landroid/content/ContentValues;

    .line 284
    sget-object v4, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "read"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    sget-object v4, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    const-string v7, "seen"

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    sget-object v4, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    const-string v8, "\u02bcUNKNOWN_SENDER!\u02bc"

    invoke-virtual {v4, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "sub_id"

    invoke-virtual {v2, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    invoke-virtual {v2, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "msg_box"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    const-string v7, "text_only"

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesAddr:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    sget-object v1, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesAddr:Landroid/content/ContentValues;

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 673
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->PROJECTION_ID:[Ljava/lang/String;

    const-string v0, "archived"

    .line 788
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->THREAD_ARCHIVED_PROJECTION:[Ljava/lang/String;

    .line 790
    sput v4, Lcom/android/providers/telephony/TelephonyBackupAgent;->THREAD_ARCHIVED_IDX:I

    const-string v0, "content://mms-sms/threadID"

    .line 1331
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    .line 1352
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 1353
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    .line 1354
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->ALL_THREADS_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/canonical-address"

    .line 1383
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->SINGLE_CANONICAL_ADDRESS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    const/16 v0, 0x3e8

    .line 260
    iput v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mMaxMsgPerFile:I

    .line 301
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mSubId2phone:Landroid/util/SparseArray;

    .line 302
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mPhone2subId:Ljava/util/Map;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mThreadArchived:Ljava/util/Map;

    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheRecipientsByThread:Ljava/util/Map;

    .line 313
    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheGetOrCreateThreadId:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 112
    sput-boolean p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sIsRestoring:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/providers/telephony/TelephonyBackupAgent;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->doRestoreFile(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method private addMmsMessage(Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1151
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 1152
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "part"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1154
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v10, "text.%06d.txt"

    invoke-static {v5, v10, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v5, v7, v8

    const-string v10, "<par dur=\"5000ms\"><text src=\"%s\" region=\"Text\" /></par>"

    .line 1156
    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1157
    iget-object v10, v1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->smil:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v7, v10, v8

    const-string v7, "<smil><head><layout><root-layout/><region id=\"Text\" top=\"0\" left=\"0\" height=\"100%%\" width=\"100%%\"/></layout></head><body>%s</body></smil>"

    .line 1158
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    iget-object v7, v1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->smil:Ljava/lang/String;

    .line 1159
    :goto_0
    new-instance v8, Landroid/content/ContentValues;

    const/4 v10, 0x7

    invoke-direct {v8, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 1160
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "mid"

    invoke-virtual {v8, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v10, -0x1

    .line 1161
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "seq"

    invoke-virtual {v8, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "ct"

    const-string v13, "application/smil"

    .line 1162
    invoke-virtual {v8, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "name"

    const-string v14, "smil.xml"

    .line 1163
    invoke-virtual {v8, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "cid"

    const-string v6, "<smil>"

    .line 1164
    invoke-virtual {v8, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "cl"

    .line 1165
    invoke-virtual {v8, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "text"

    .line 1166
    invoke-virtual {v8, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v7, v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v4, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "TelephonyBackupAgent"

    if-nez v7, :cond_1

    const-string v0, "Could not insert SMIL part"

    .line 1168
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1174
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    move-object/from16 v16, v8

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 1175
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1176
    invoke-virtual {v7, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "text/plain"

    .line 1177
    invoke-virtual {v7, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-virtual {v7, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v13

    const-string v13, ">"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v7, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object v5, v1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->body:Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    if-nez v5, :cond_2

    const/16 v5, 0x6a

    goto :goto_1

    :cond_2
    iget v5, v5, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->charSet:I

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "chset"

    .line 1182
    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1185
    iget-object v5, v1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->body:Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    if-nez v5, :cond_3

    const-string v5, ""

    goto :goto_2

    :cond_3
    iget-object v5, v5, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->text:Ljava/lang/String;

    :goto_2
    invoke-virtual {v7, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v5, v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, v4, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v0, "Could not insert body part"

    move-object/from16 v5, v16

    .line 1188
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    move-object/from16 v5, v16

    .line 1193
    iget-object v7, v1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->attachments:Ljava/util/List;

    if-eqz v7, :cond_6

    .line 1195
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 1196
    new-instance v14, Landroid/content/ContentValues;

    move-object/from16 v16, v7

    const/4 v7, 0x6

    invoke-direct {v14, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1197
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v14, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1198
    invoke-virtual {v14, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "mime_type"

    .line 1200
    invoke-virtual {v8, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1199
    invoke-virtual {v14, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "filename"

    .line 1201
    invoke-virtual {v8, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1202
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v2

    move-object/from16 v2, v17

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v15, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v14, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/BackupAgent;->getDataDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/providers/telephony/TelephonyBackupAgent;->ATTACHMENT_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "_data"

    .line 1204
    invoke-virtual {v14, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v3, v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v0, "Could not insert attachment part"

    .line 1208
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v7, v16

    move-wide/from16 v2, v18

    goto :goto_3

    .line 1215
    :cond_6
    iget-object v2, v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, v1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v0, "Could not insert mms"

    .line 1217
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1221
    :cond_7
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 1223
    new-instance v3, Landroid/content/ContentValues;

    const/4 v7, 0x1

    invoke-direct {v3, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1224
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1225
    iget-object v7, v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "addr"

    .line 1229
    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1230
    iget-object v1, v1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->addresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 1231
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1232
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v7, "msg_id"

    invoke-virtual {v4, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1233
    iget-object v3, v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_4

    :cond_8
    return-void
.end method

.method private archiveThread(JZ)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1024
    :cond_0
    new-instance p3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1025
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "archived"

    invoke-virtual {p3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1026
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 1030
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "_id=?"

    .line 1026
    invoke-virtual {p0, v1, p3, p1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-eq p0, v0, :cond_1

    const-string p0, "TelephonyBackupAgent"

    const-string p1, "archiveThread: failed to update database"

    .line 1031
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private backupAll(Landroid/app/backup/FullBackupDataOutput;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 443
    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 450
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getJsonWriter(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    :try_start_0
    const-string v1, "_sms_backup"

    .line 451
    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {p0, p2, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->putSmsMessagesToJson(Landroid/database/Cursor;Landroid/util/JsonWriter;)Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;

    move-result-object p2

    goto :goto_0

    .line 454
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->putMmsMessagesToJson(Landroid/database/Cursor;Landroid/util/JsonWriter;)Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    .line 457
    :cond_2
    invoke-direct {p0, p2, p3, p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->backupFile(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    .line 450
    :try_start_1
    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method private backupFile(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->access$200(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 494
    :try_start_0
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->access$100(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)I

    move-result p1

    if-lez p1, :cond_1

    .line 495
    iget-wide p1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mBytesOverQuota:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_0

    .line 496
    iget-wide p1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mBytesOverQuota:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    sub-long/2addr p1, v1

    iput-wide p1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mBytesOverQuota:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    .line 499
    :cond_0
    :try_start_1
    invoke-super {p0, v0, p3}, Landroid/app/backup/BackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 503
    throw p0
.end method

.method private doRestoreFile(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restoring file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyBackupAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-static {p2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getJsonReader(Ljava/io/FileDescriptor;)Landroid/util/JsonReader;

    move-result-object p2

    :try_start_0
    const-string v0, "_sms_backup"

    .line 614
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Restoring SMS"

    .line 615
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {p0, p2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->putSmsMessagesToProvider(Landroid/util/JsonReader;)V

    goto :goto_0

    :cond_0
    const-string v0, "_mms_backup"

    .line 617
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Restoring text MMS"

    .line 618
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {p0, p2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->putMmsMessagesToProvider(Landroid/util/JsonReader;)V

    goto :goto_0

    .line 621
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown file to restore:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p2, :cond_2

    .line 623
    invoke-virtual {p2}, Landroid/util/JsonReader;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    .line 613
    :try_start_1
    invoke-virtual {p2}, Landroid/util/JsonReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
.end method

.method private doesMmsExist(Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)Z
    .locals 11

    .line 688
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "date"

    aput-object v3, v1, v2

    iget-object v4, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    .line 689
    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s = %d"

    .line 688
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 690
    iget-object v5, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/providers/telephony/TelephonyBackupAgent;->PROJECTION_ID:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 692
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 694
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 695
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getMmsBody(I)Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 696
    iget-object v3, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->body:Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    invoke-virtual {v1, v3}, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 701
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v4

    .line 699
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    .line 690
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 701
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return v2
.end method

.method private doesSmsExist(Landroid/content/ContentValues;)Z
    .locals 11

    .line 677
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "date"

    aput-object v3, v1, v2

    .line 678
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    const-string v5, "body"

    aput-object v5, v1, v3

    .line 680
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v1, v3

    const-string p1, "%s = %d and %s = %s"

    .line 677
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 681
    iget-object v5, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/providers/telephony/TelephonyBackupAgent;->PROJECTION_ID:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 683
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    move v2, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_0

    .line 681
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    .line 684
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v2
.end method

.method private findNewestValue(JLjava/lang/String;)J
    .locals 2

    if-nez p3, :cond_0

    return-wide p1

    .line 763
    :cond_0
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 764
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 766
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to parse value "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "TelephonyBackupAgent"

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1
.end method

.method private getAddresses(Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v2, "getAddresses: invalid id "

    .line 1387
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, " "

    .line 1388
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1389
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const-string v8, "TelephonyBackupAgent"

    if-ge v7, v5, :cond_4

    aget-object v0, v4, v7

    .line 1393
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-gez v0, :cond_0

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v12, p0

    goto/16 :goto_3

    :cond_0
    const/4 v11, 0x0

    move-object/from16 v12, p0

    .line 1407
    :try_start_1
    iget-object v13, v12, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->SINGLE_CANONICAL_ADDRESS_URI:Landroid/net/Uri;

    .line 1408
    invoke-static {v0, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1407
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1411
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getAddresses: query failed for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v11, :cond_3

    .line 1416
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1417
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1418
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1419
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1421
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Canonical MMS/SMS address is empty for id: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1425
    :cond_2
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1426
    throw v0

    :catch_1
    move-exception v0

    move-object/from16 v12, p0

    .line 1399
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1429
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No MMS addresses found from ids string ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v3
.end method

.method public static getIsRestoring()Z
    .locals 1

    .line 1448
    sget-boolean v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sIsRestoring:Z

    return v0
.end method

.method private static getJsonReader(Ljava/io/FileDescriptor;)Landroid/util/JsonReader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1283
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/util/zip/InflaterInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    const-string p0, "UTF-8"

    invoke-direct {v1, v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method private getJsonWriter(Ljava/lang/String;)Landroid/util/JsonWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1277
    new-instance v0, Landroid/util/JsonWriter;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/util/zip/DeflaterOutputStream;

    const/4 v4, 0x0

    .line 1278
    invoke-virtual {p0, p1, v4}, Landroid/app/backup/BackupAgent;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string p0, "UTF-8"

    invoke-direct {v2, v3, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const p0, 0x8000

    invoke-direct {v1, v2, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-direct {v0, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method private static getMessageDate(Landroid/database/Cursor;)J
    .locals 2

    const-string v0, "date"

    .line 422
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMmsAddressesFromReader(Landroid/util/JsonReader;Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1084
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->addresses:Ljava/util/List;

    .line 1085
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 1086
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1087
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 1088
    new-instance v0, Landroid/content/ContentValues;

    sget-object v1, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesAddr:Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1089
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    const-string v2, "address"

    if-eqz v1, :cond_7

    .line 1090
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    .line 1091
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x4468640c

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_3

    const v2, 0x368f3a

    if-eq v4, v2, :cond_2

    const v2, 0x2c0d614c

    if-eq v4, v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "charset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v3, v7

    goto :goto_2

    :cond_2
    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v3, v6

    :cond_4
    :goto_2
    if-eqz v3, :cond_6

    if-eq v3, v7, :cond_6

    if-eq v3, v6, :cond_5

    .line 1100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown JSON Element name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyBackupAgent"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 1097
    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1094
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1105
    :cond_7
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 1106
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1107
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->addresses:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1110
    :cond_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method private static getMmsAttachmentsFromReader(Landroid/util/JsonReader;Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->attachments:Ljava/util/List;

    .line 1119
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 1120
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1121
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 1122
    new-instance v0, Landroid/content/ContentValues;

    sget-object v1, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesAttachments:Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1123
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    const-string v2, "TelephonyBackupAgent"

    const-string v3, "filename"

    if-eqz v1, :cond_4

    .line 1124
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    .line 1125
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x2bcbadf9

    const/4 v7, 0x1

    if-eq v5, v6, :cond_1

    const v3, -0xbaf5b9b

    if-eq v5, v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "mime_type"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v4, v7

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_3

    .line 1131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMmsAttachmentsFromReader Unknown name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 1128
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1136
    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 1137
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1138
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->attachments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string v0, "Attachment json with no filenames"

    .line 1140
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1143
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method private getMmsBody(I)Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;
    .locals 6

    .line 1036
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1037
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "part"

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1042
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->MMS_TEXT_PROJECTION:[Ljava/lang/String;

    const-string p0, "text/plain"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "ct=?"

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1045
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    move v2, p1

    move-object v1, v0

    .line 1047
    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_0

    .line 1049
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    .line 1050
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1052
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    move p1, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    .line 1042
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1

    :cond_4
    move-object v1, v0

    :goto_2
    if-eqz p0, :cond_5

    .line 1054
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    if-nez v1, :cond_6

    goto :goto_3

    .line 1055
    :cond_6
    new-instance v0, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    invoke-direct {v0, v1, p1}, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;-><init>(Ljava/lang/String;I)V

    :goto_3
    return-object v0
.end method

.method private static getNormalizedNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 712
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 713
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 713
    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 716
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getOrCreateThreadId(Ljava/util/Set;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1305
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 1308
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u02bcUNKNOWN_SENDER!\u02bc"

    .line 1309
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1312
    :cond_1
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheGetOrCreateThreadId:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 1313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheGetOrCreateThreadId:Ljava/util/Map;

    .line 1316
    :cond_2
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheGetOrCreateThreadId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1317
    iget-wide v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mUnknownSenderThreadId:J

    .line 1319
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "TelephonyBackupAgent"

    const-string v4, "Problem obtaining thread."

    .line 1321
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1323
    :goto_0
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheGetOrCreateThreadId:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v0

    .line 1327
    :cond_3
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheGetOrCreateThreadId:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private getRawRecipientIdsForThread(J)Ljava/lang/String;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 1364
    :cond_0
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/providers/telephony/TelephonyBackupAgent;->ALL_THREADS_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/telephony/TelephonyBackupAgent;->SMS_RECIPIENTS_PROJECTION:[Ljava/lang/String;

    const/4 p0, 0x1

    new-array v6, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 1366
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v0

    const/4 v7, 0x0

    const-string v5, "_id=?"

    .line 1364
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1369
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1372
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1376
    throw p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static getRecipients(Landroid/util/JsonReader;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 867
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 868
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 871
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-object v0
.end method

.method private getRecipientsByThread(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheRecipientsByThread:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheRecipientsByThread:Ljava/util/Map;

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheRecipientsByThread:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1340
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getRawRecipientIdsForThread(J)Ljava/lang/String;

    move-result-object v0

    .line 1341
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1342
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheRecipientsByThread:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getAddresses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1344
    :cond_1
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheRecipientsByThread:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mCacheRecipientsByThread:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private handleThreadId(Landroid/util/JsonWriter;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 773
    invoke-direct {p0, p2, p3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getRecipientsByThread(J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 774
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "recipients"

    .line 778
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeRecipientsToWriter(Landroid/util/JsonWriter;Ljava/util/List;)V

    .line 779
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mThreadArchived:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 780
    invoke-direct {p0, p2, p3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->isThreadArchived(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "archived"

    .line 782
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 784
    :cond_1
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mThreadArchived:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private isThreadArchived(J)Z
    .locals 7

    .line 793
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 794
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "recipients"

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 795
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 797
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/providers/telephony/TelephonyBackupAgent;->THREAD_ARCHIVED_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    .line 799
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 800
    sget p2, Lcom/android/providers/telephony/TelephonyBackupAgent;->THREAD_ARCHIVED_IDX:I

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move p1, v0

    :cond_0
    if-eqz p0, :cond_1

    .line 802
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 797
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1

    :cond_3
    if-eqz p0, :cond_4

    .line 802
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return p1
.end method

.method private readMmsFromReader(Landroid/util/JsonReader;)Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 938
    new-instance v2, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;-><init>(Lcom/android/providers/telephony/TelephonyBackupAgent$1;)V

    .line 939
    new-instance v4, Landroid/content/ContentValues;

    sget-object v5, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->size()I

    move-result v5

    const/4 v6, 0x5

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v4, v2, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    .line 940
    sget-object v5, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 941
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    const/16 v4, 0x6a

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    move v9, v4

    move v10, v5

    .line 946
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v11

    const/4 v12, 0x1

    const-string v13, "sub"

    const-string v14, "sub_cs"

    if-eqz v11, :cond_2

    .line 947
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v11

    const/4 v15, -0x1

    .line 951
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v12, "msg_box"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xe

    goto/16 :goto_2

    :sswitch_1
    const-string v12, "tr_id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x10

    goto/16 :goto_2

    :sswitch_2
    const-string v12, "smil"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x3

    goto/16 :goto_2

    :sswitch_3
    const-string v12, "read"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x11

    goto/16 :goto_2

    :sswitch_4
    const-string v12, "date"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xa

    goto/16 :goto_2

    :sswitch_5
    const-string v12, "ct_l"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xf

    goto/16 :goto_2

    :sswitch_6
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x8

    goto/16 :goto_2

    :sswitch_7
    const-string v12, "v"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xd

    goto/16 :goto_2

    :sswitch_8
    const-string v12, "date_sent"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xb

    goto :goto_2

    :sswitch_9
    const-string v12, "recipients"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x6

    goto :goto_2

    :sswitch_a
    const-string v12, "attachments"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x2

    goto :goto_2

    :sswitch_b
    const-string v12, "self_phone"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v5

    goto :goto_2

    :sswitch_c
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x9

    goto :goto_2

    :sswitch_d
    const-string v12, "m_type"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xc

    goto :goto_2

    :sswitch_e
    const-string v12, "mms_charset"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v6

    goto :goto_2

    :sswitch_f
    const-string v12, "archived"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x7

    goto :goto_2

    :sswitch_10
    const-string v13, "mms_addresses"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_2

    :sswitch_11
    const-string v12, "mms_body"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x4

    goto :goto_2

    :cond_1
    :goto_1
    move v12, v15

    :goto_2
    packed-switch v12, :pswitch_data_0

    .line 993
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown JSON element name:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "TelephonyBackupAgent"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 990
    :pswitch_0
    iget-object v12, v2, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 978
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v10

    goto/16 :goto_0

    .line 974
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getRecipients(Landroid/util/JsonReader;)Ljava/util/Set;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getOrCreateThreadId(Ljava/util/Set;)J

    move-result-wide v7

    .line 975
    iget-object v11, v2, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "thread_id"

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 971
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v9

    goto/16 :goto_0

    .line 968
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 965
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->smil:Ljava/lang/String;

    goto/16 :goto_0

    .line 962
    :pswitch_6
    invoke-static {v1, v2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getMmsAttachmentsFromReader(Landroid/util/JsonReader;Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)V

    goto/16 :goto_0

    .line 959
    :pswitch_7
    invoke-static {v1, v2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getMmsAddressesFromReader(Landroid/util/JsonReader;Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)V

    goto/16 :goto_0

    .line 953
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v11

    .line 954
    iget-object v12, v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mPhone2subId:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 955
    iget-object v12, v2, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    iget-object v13, v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mPhone2subId:Ljava/util/Map;

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    const-string v13, "sub_id"

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 998
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    if-eqz v3, :cond_3

    .line 1001
    new-instance v1, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    invoke-direct {v1, v3, v9}, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;-><init>(Ljava/lang/String;I)V

    iput-object v1, v2, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->body:Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    .line 1004
    :cond_3
    iget-object v1, v2, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    .line 1005
    iget-object v6, v2, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->attachments:Ljava/util/List;

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    if-eqz v3, :cond_5

    move v5, v12

    .line 1004
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "text_only"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1008
    iget-object v1, v2, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v2, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    .line 1009
    invoke-virtual {v1, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1010
    iget-object v1, v2, Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;->values:Landroid/content/ContentValues;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1013
    :cond_6
    invoke-direct {v0, v7, v8, v10}, Lcom/android/providers/telephony/TelephonyBackupAgent;->archiveThread(JZ)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75726872 -> :sswitch_11
        -0x6d750eca -> :sswitch_10
        -0x664cc81e -> :sswitch_f
        -0x43ffd420 -> :sswitch_e
        -0x408e7c34 -> :sswitch_d
        -0x3523f531 -> :sswitch_c
        -0x34d03945 -> :sswitch_b
        -0x2c0c3450 -> :sswitch_a
        -0x14b32e86 -> :sswitch_9
        -0xed5ca77 -> :sswitch_8
        0x76 -> :sswitch_7
        0x1be40 -> :sswitch_6
        0x2ec01e -> :sswitch_5
        0x2eefae -> :sswitch_4
        0x355996 -> :sswitch_3
        0x35ecfd -> :sswitch_2
        0x697ea7c -> :sswitch_1
        0x501cac0d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readSmsValuesFromReader(Landroid/util/JsonReader;)Landroid/content/ContentValues;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    new-instance v0, Landroid/content/ContentValues;

    sget-object v1, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v1

    const/4 v2, 0x6

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 820
    sget-object v1, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 823
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    const-wide/16 v3, -0x1

    move v5, v1

    .line 824
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 825
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 826
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "type"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "read"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x7

    goto :goto_1

    :sswitch_2
    const-string v8, "date"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :sswitch_3
    const-string v8, "body"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v7, v1

    goto :goto_1

    :sswitch_4
    const-string v8, "date_sent"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x2

    goto :goto_1

    :sswitch_5
    const-string v8, "recipients"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v7, 0x8

    goto :goto_1

    :sswitch_6
    const-string v8, "self_phone"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v7, 0xa

    goto :goto_1

    :sswitch_7
    const-string v8, "status"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x3

    goto :goto_1

    :sswitch_8
    const-string v8, "address"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v7, v2

    goto :goto_1

    :sswitch_9
    const-string v8, "archived"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v7, 0x9

    goto :goto_1

    :sswitch_a
    const-string v8, "subject"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x5

    :cond_1
    :goto_1
    packed-switch v7, :pswitch_data_0

    const-string v6, "TelephonyBackupAgent"

    const-string v7, "readSmsValuesFromReader encountered unknown name."

    .line 854
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 845
    :pswitch_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 846
    iget-object v7, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mPhone2subId:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 847
    iget-object v7, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mPhone2subId:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const-string v7, "sub_id"

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 842
    :pswitch_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v5

    goto/16 :goto_0

    .line 838
    :pswitch_2
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getRecipients(Landroid/util/JsonReader;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getOrCreateThreadId(Ljava/util/Set;)J

    move-result-wide v3

    .line 839
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "thread_id"

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 835
    :pswitch_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 860
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 861
    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/telephony/TelephonyBackupAgent;->archiveThread(JZ)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f55aad4 -> :sswitch_a
        -0x664cc81e -> :sswitch_9
        -0x4468640c -> :sswitch_8
        -0x3532300e -> :sswitch_7
        -0x34d03945 -> :sswitch_6
        -0x14b32e86 -> :sswitch_5
        -0xed5ca77 -> :sswitch_4
        0x2e39a2 -> :sswitch_3
        0x2eefae -> :sswitch_2
        0x355996 -> :sswitch_1
        0x368f3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static writeIntToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1297
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 1299
    invoke-virtual {p0, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    :cond_0
    return-void
.end method

.method private writeMmsAddresses(Landroid/util/JsonWriter;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "address"

    .line 1059
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1060
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v2, "addr"

    invoke-virtual {p2, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1061
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1063
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 1064
    iget-object v3, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/providers/telephony/TelephonyBackupAgent;->MMS_ADDR_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1066
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1068
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1070
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string p2, "type"

    .line 1071
    invoke-static {p1, p0, p2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeIntToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1072
    invoke-static {p1, p0, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeStringToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string p2, "charset"

    .line 1073
    invoke-static {p1, p0, p2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeIntToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 1076
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 1064
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1

    :cond_3
    :goto_1
    if-eqz p0, :cond_4

    .line 1078
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1079
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method

.method private writeMmsToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 877
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 878
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getMmsBody(I)Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 880
    iget-object v3, v2, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->text:Ljava/lang/String;

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 885
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const/4 v3, 0x1

    move v4, v0

    move v5, v3

    .line 886
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    const-string v7, "sub_cs"

    if-ge v4, v6, :cond_4

    .line 887
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    .line 888
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v9, -0x1

    .line 895
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "date"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v9, 0x4

    goto :goto_1

    :sswitch_1
    const-string v7, "sub"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v9, 0x6

    goto :goto_1

    :sswitch_2
    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v9, 0x2

    goto :goto_1

    :sswitch_3
    const-string v7, "date_sent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v9, 0x5

    goto :goto_1

    :sswitch_4
    const-string v7, "sub_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v9, v0

    goto :goto_1

    :sswitch_5
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v9, 0x3

    goto :goto_1

    :sswitch_6
    const-string v7, "thread_id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v9, v3

    :cond_2
    :goto_1
    packed-switch v9, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move v5, v0

    goto :goto_2

    .line 912
    :pswitch_1
    invoke-static {p3}, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->access$200(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)J

    move-result-wide v9

    invoke-direct {p0, v9, v10, v8}, Lcom/android/providers/telephony/TelephonyBackupAgent;->findNewestValue(JLjava/lang/String;)J

    move-result-wide v9

    invoke-static {p3, v9, v10}, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->access$202(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;J)J

    .line 913
    invoke-virtual {p1, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_3

    .line 904
    :pswitch_2
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 905
    invoke-direct {p0, p1, v6, v7}, Lcom/android/providers/telephony/TelephonyBackupAgent;->handleThreadId(Landroid/util/JsonWriter;J)V

    goto :goto_3

    .line 897
    :pswitch_3
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 898
    iget-object v7, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mSubId2phone:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_3

    const-string v7, "self_phone"

    .line 900
    invoke-virtual {p1, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_3

    .line 918
    :goto_2
    invoke-virtual {p1, v6}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_3
    :goto_3
    :pswitch_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    const-string v0, "mms_addresses"

    .line 923
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeMmsAddresses(Landroid/util/JsonWriter;I)V

    const-string p0, "mms_body"

    .line 925
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    iget-object v0, v2, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string p0, "mms_charset"

    .line 927
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    iget v0, v2, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->charSet:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    if-nez v5, :cond_5

    .line 931
    invoke-static {p1, p2, v7}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeStringToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 933
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 934
    invoke-static {p3}, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->access$108(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)I

    :cond_6
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d1dd090 -> :sswitch_6
        -0x3523f531 -> :sswitch_5
        -0x3523f486 -> :sswitch_4
        -0xed5ca77 -> :sswitch_3
        0x171ba -> :sswitch_2
        0x1be40 -> :sswitch_1
        0x2eefae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static writeRecipientsToWriter(Landroid/util/JsonWriter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    if-eqz p1, :cond_0

    .line 810
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 811
    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    .line 814
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method

.method private writeSmsToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 722
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 724
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 725
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    .line 726
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v4, -0x1

    .line 730
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "date"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v7

    goto :goto_1

    :sswitch_1
    const-string v5, "_id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v8

    goto :goto_1

    :sswitch_2
    const-string v5, "date_sent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v6

    goto :goto_1

    :sswitch_3
    const-string v5, "sub_id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v0

    goto :goto_1

    :sswitch_4
    const-string v5, "thread_id"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v9

    :cond_1
    :goto_1
    if-eqz v4, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_5

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_2

    .line 750
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_2

    .line 746
    :cond_2
    invoke-static {p3}, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->access$200(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->findNewestValue(JLjava/lang/String;)J

    move-result-wide v4

    invoke-static {p3, v4, v5}, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->access$202(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;J)J

    .line 747
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_2

    .line 739
    :cond_3
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 740
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->handleThreadId(Landroid/util/JsonWriter;J)V

    goto :goto_2

    .line 732
    :cond_4
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 733
    iget-object v3, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mSubId2phone:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v3, "self_phone"

    .line 735
    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 754
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d1dd090 -> :sswitch_4
        -0x3523f486 -> :sswitch_3
        -0xed5ca77 -> :sswitch_2
        0x171ba -> :sswitch_1
        0x2eefae -> :sswitch_0
    .end sparse-switch
.end method

.method private static writeStringToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1289
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1291
    invoke-virtual {p0, p2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :cond_0
    return-void
.end method


# virtual methods
.method clearSharedPreferences()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "backup_shared_prefs"

    const/4 v1, 0x0

    .line 414
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgent;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "backup_data_bytes"

    .line 415
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "backup_quota_bytes"

    .line 416
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "reset_quota_time"

    .line 417
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 418
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method initUnknownSender()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 348
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getOrCreateThreadId(Ljava/util/Set;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mUnknownSenderThreadId:J

    .line 349
    sget-object v2, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesSms:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 350
    sget-object v0, Lcom/android/providers/telephony/TelephonyBackupAgent;->sDefaultValuesMms:Landroid/content/ContentValues;

    iget-wide v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mUnknownSenderThreadId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 318
    invoke-super {p0}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 320
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 326
    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getNormalizedNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v2

    .line 327
    iget-object v3, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mSubId2phone:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 328
    iget-object v3, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mPhone2subId:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    .line 333
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->initUnknownSender()V

    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "backup_shared_prefs"

    const/4 v1, 0x0

    .line 355
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgent;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "reset_quota_time"

    const-wide v3, 0x7fffffffffffffffL

    .line 356
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-gez v2, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->clearSharedPreferences()V

    :cond_0
    const-string v2, "backup_data_bytes"

    const-wide/16 v5, 0x0

    .line 361
    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v2, "backup_quota_bytes"

    .line 362
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v7, v2

    iput-wide v7, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mBytesOverQuota:J

    cmp-long v0, v7, v5

    if-lez v0, :cond_1

    long-to-double v2, v7

    const-wide v4, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 364
    iput-wide v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mBytesOverQuota:J

    .line 368
    :cond_1
    iget-object v4, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/providers/telephony/TelephonyBackupAgent;->SMS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 370
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/telephony/TelephonyBackupAgent;->MMS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_2

    .line 374
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 377
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move v3, v1

    :goto_1
    const-string v4, "%06d_mms_backup"

    const-string v5, "%06d_sms_backup"

    const/4 v6, 0x1

    if-eqz v0, :cond_5

    .line 385
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v2, :cond_5

    .line 386
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_5

    .line 387
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getMessageDate(Landroid/database/Cursor;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    .line 388
    invoke-static {v2}, Lcom/android/providers/telephony/TelephonyBackupAgent;->getMessageDate(Landroid/database/Cursor;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_4

    .line 390
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, v3, 0x1

    .line 391
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->backupAll(Landroid/app/backup/FullBackupDataOutput;Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_2

    .line 393
    :cond_4
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    add-int/lit8 v7, v3, 0x1

    .line 394
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    .line 393
    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->backupAll(Landroid/app/backup/FullBackupDataOutput;Landroid/database/Cursor;Ljava/lang/String;)V

    :goto_2
    move v3, v7

    goto :goto_1

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    .line 398
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_6

    .line 399
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v8, v6, [Ljava/lang/Object;

    add-int/lit8 v9, v3, 0x1

    .line 400
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v1

    invoke-static {v7, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->backupAll(Landroid/app/backup/FullBackupDataOutput;Landroid/database/Cursor;Ljava/lang/String;)V

    move v3, v9

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz v2, :cond_8

    .line 403
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_8

    .line 404
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v6, [Ljava/lang/Object;

    add-int/lit8 v8, v3, 0x1

    .line 405
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-static {v5, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 404
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->backupAll(Landroid/app/backup/FullBackupDataOutput;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v8

    goto :goto_4

    :goto_5
    if-eqz v2, :cond_7

    .line 367
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    throw p0

    :cond_8
    if-eqz v2, :cond_9

    .line 407
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_9
    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_a
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mThreadArchived:Ljava/util/Map;

    return-void

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_b

    .line 367
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_7
    throw p0
.end method

.method public onQuotaExceeded(JJ)V
    .locals 7

    const-string v0, "backup_shared_prefs"

    const/4 v1, 0x0

    .line 427
    invoke-virtual {p0, v0, v1}, Landroid/app/backup/BackupAgent;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "backup_data_bytes"

    .line 428
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "backup_quota_bytes"

    if-eqz v1, :cond_0

    .line 429
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    long-to-double p1, p1

    const-wide/16 v3, 0x0

    .line 431
    invoke-interface {p0, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 432
    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long/2addr v5, v3

    long-to-double v3, v5

    const-wide v5, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v3, v5

    add-double/2addr p1, v3

    double-to-long p1, p1

    .line 434
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 435
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 436
    invoke-interface {p0, v2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide p3, 0x9a7ec800L

    add-long/2addr p1, p3

    const-string p3, "reset_quota_time"

    invoke-interface {p0, p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 438
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onRestoreFinished()V
    .locals 0

    .line 606
    invoke-super {p0}, Landroid/app/backup/BackupAgent;->onRestoreFinished()V

    .line 607
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->startIfFilesExist(Landroid/content/Context;)V

    return-void
.end method

.method putMmsMessagesToJson(Landroid/database/Cursor;Landroid/util/JsonWriter;)Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    new-instance v0, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;-><init>(Lcom/android/providers/telephony/TelephonyBackupAgent$1;)V

    .line 465
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 466
    :goto_0
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->access$100(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)I

    move-result v1

    iget v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mMaxMsgPerFile:I

    if-ge v1, v2, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 468
    invoke-direct {p0, p2, p1, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeMmsToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)V

    .line 467
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object v0
.end method

.method putMmsMessagesToProvider(Landroid/util/JsonReader;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    const/4 v0, 0x0

    .line 653
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    const-string v2, "TelephonyBackupAgent"

    if-eqz v1, :cond_1

    .line 654
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->readMmsFromReader(Landroid/util/JsonReader;)Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;

    move-result-object v1

    .line 658
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->doesMmsExist(Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "Mms: Found duplicate MMS"

    .line 662
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 667
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->addMmsMessage(Lcom/android/providers/telephony/TelephonyBackupAgent$Mms;)V

    goto :goto_0

    .line 669
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "putMmsMessagesToProvider handled "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " new messages."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method putSmsMessagesToJson(Landroid/database/Cursor;Landroid/util/JsonWriter;)Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    new-instance v0, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;-><init>(Lcom/android/providers/telephony/TelephonyBackupAgent$1;)V

    .line 479
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 480
    :goto_0
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->access$100(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)I

    move-result v1

    iget v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mMaxMsgPerFile:I

    if-ge v1, v2, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    invoke-direct {p0, p2, p1, v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->writeSmsToWriter(Landroid/util/JsonWriter;Landroid/database/Cursor;Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)V

    .line 481
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;->access$104(Lcom/android/providers/telephony/TelephonyBackupAgent$BackupChunkInformation;)I

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p2}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-object v0
.end method

.method putSmsMessagesToProvider(Landroid/util/JsonReader;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginArray()V

    .line 630
    iget v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mMaxMsgPerFile:I

    .line 631
    new-array v1, v0, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    .line 632
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 633
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->readSmsValuesFromReader(Landroid/util/JsonReader;)Landroid/content/ContentValues;

    move-result-object v3

    .line 634
    invoke-direct {p0, v3}, Lcom/android/providers/telephony/TelephonyBackupAgent;->doesSmsExist(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 637
    rem-int/2addr v2, v0

    aput-object v3, v1, v2

    .line 638
    rem-int v2, v4, v0

    if-nez v2, :cond_1

    .line 639
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_1
    move v2, v4

    goto :goto_0

    .line 642
    :cond_2
    rem-int/2addr v2, v0

    if-lez v2, :cond_3

    .line 643
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 644
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ContentValues;

    .line 643
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 646
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method setContentResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 338
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method setSubId(Landroid/util/SparseArray;Ljava/util/Map;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mSubId2phone:Landroid/util/SparseArray;

    .line 343
    iput-object p2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent;->mPhone2subId:Ljava/util/Map;

    return-void
.end method
