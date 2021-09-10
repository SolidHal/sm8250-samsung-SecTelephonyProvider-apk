.class public Lcom/android/providers/telephony/backup/BnRDuplicateChecker;
.super Ljava/lang/Object;
.source "BnRDuplicateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;,
        Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;,
        Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;,
        Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;,
        Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;
    }
.end annotation


# static fields
.field private static final DUPLICATION_CHAT4SMS_CHECK_PROJECTION:[Ljava/lang/String;

.field private static final DUPLICATION_CHAT_CHECK_PROJECTION:[Ljava/lang/String;

.field private static final DUPLICATION_CHECK_IMDN_PROJECTION:[Ljava/lang/String;

.field private static final DUPLICATION_FT_CHECK_PROJECTION:[Ljava/lang/String;

.field private static final DUPLICATION_MID_CHECK_PROJECTION:[Ljava/lang/String;

.field private static final DUPLICATION_SMS_CHECK_PROJECTION:[Ljava/lang/String;

.field private static mCandidateItemMap:Ljava/util/TreeMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mCandidateSMSItemMap:Ljava/util/TreeMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mChat4SMSItemsMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mChatItemInfoMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mChatItemsMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mEnableCarrierServerSync:Z = false

.field private static mEnableSmsServerTime:Z = false

.field private static mFTImdnIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mFtItemsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mMmsMIdItemsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mSMSItemsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sFtSessionIdThreadIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sImSessionIdThreadIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sLoadChatSyncObject:Ljava/lang/Object;

.field private static final sLoadSMSSyncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sLoadSMSSyncObject:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sLoadChatSyncObject:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sImSessionIdThreadIdMap:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sFtSessionIdThreadIdMap:Ljava/util/Map;

    const-string v0, "_id"

    const-string v1, "date"

    const-string v2, "type"

    const-string v3, "body"

    const-string v4, "address"

    .line 130
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_SMS_CHECK_PROJECTION:[Ljava/lang/String;

    .line 337
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_CHAT4SMS_CHECK_PROJECTION:[Ljava/lang/String;

    const-string v2, "_id"

    const-string v3, "imdn_message_id"

    const-string v4, "rcsdb_id"

    const-string v5, "date"

    const-string v6, "thread_id"

    const-string v7, "type"

    const-string v8, "body"

    const-string v9, "address"

    const-string v10, "from_address"

    const-string v11, "session_id"

    .line 525
    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_CHAT_CHECK_PROJECTION:[Ljava/lang/String;

    const-string v2, "_id"

    const-string v3, "rcsdb_id"

    const-string v4, "date"

    const-string v5, "thread_id"

    const-string v6, "type"

    const-string v7, "imdn_message_id"

    const-string v8, "from_address"

    const-string v9, "session_id"

    const-string v10, "chat_session_id"

    .line 790
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_FT_CHECK_PROJECTION:[Ljava/lang/String;

    const-string v1, "imdn_message_id"

    .line 1014
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_CHECK_IMDN_PROJECTION:[Ljava/lang/String;

    const-string v1, "m_id"

    .line 1083
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_MID_CHECK_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableSmsServerTime:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableCarrierServerSync:Z

    return v0
.end method

.method private static checkChatDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;)Z
    .locals 10

    const-string v0, "TP/BnRDuplicateChecker"

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "im"

    .line 659
    sget-object v4, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_CHAT_CHECK_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_20

    .line 661
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 665
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p1, "imdn_message_id"

    .line 666
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "rcsdb_id"

    .line 667
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "date"

    .line 668
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "thread_id"

    .line 669
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    .line 670
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_9

    .line 673
    iget-object v2, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->imdnMessageId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    if-eqz p0, :cond_1

    .line 711
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v1

    :cond_2
    if-eqz v5, :cond_4

    .line 676
    :try_start_3
    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_4

    if-eqz p0, :cond_3

    .line 711
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return v1

    .line 679
    :cond_4
    :try_start_5
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableJansky()Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "from_address"

    .line 680
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 681
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->fromAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_0

    :cond_5
    if-nez p1, :cond_6

    .line 683
    iget-object v2, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->fromAddress:Ljava/lang/String;

    if-nez v2, :cond_7

    :cond_6
    if-eqz p1, :cond_1b

    iget-object v2, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->fromAddress:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p1, :cond_1b

    :cond_7
    if-eqz p0, :cond_8

    .line 711
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_8
    return v1

    .line 688
    :cond_9
    :try_start_7
    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->imdnMessageId:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz p1, :cond_b

    if-eqz p0, :cond_a

    .line 711
    :try_start_8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_a
    return v1

    :cond_b
    if-nez v2, :cond_c

    .line 691
    :try_start_9
    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->rcsdbId:Ljava/lang/String;

    if-nez p1, :cond_d

    :cond_c
    if-eqz v2, :cond_f

    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->rcsdbId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez p1, :cond_f

    :cond_d
    if-eqz p0, :cond_e

    .line 711
    :try_start_a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_e
    return v1

    :cond_f
    if-nez v3, :cond_10

    .line 694
    :try_start_b
    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->date:Ljava/lang/String;

    if-nez p1, :cond_11

    :cond_10
    if-eqz v3, :cond_13

    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->date:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez p1, :cond_13

    :cond_11
    if-eqz p0, :cond_12

    .line 711
    :try_start_c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :cond_12
    return v1

    :cond_13
    if-nez v4, :cond_14

    .line 697
    :try_start_d
    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->threadId:Ljava/lang/String;

    if-nez p1, :cond_15

    :cond_14
    if-eqz v4, :cond_17

    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->threadId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez p1, :cond_17

    :cond_15
    if-eqz p0, :cond_16

    .line 711
    :try_start_e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :cond_16
    return v1

    :cond_17
    if-nez v5, :cond_18

    .line 700
    :try_start_f
    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->type:Ljava/lang/String;

    if-nez p1, :cond_19

    :cond_18
    if-eqz v5, :cond_1b

    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-nez p1, :cond_1b

    :cond_19
    if-eqz p0, :cond_1a

    .line 711
    :try_start_10
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :cond_1a
    return v1

    .line 705
    :cond_1b
    :goto_0
    :try_start_11
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c

    const-string p1, "session_id"

    .line 706
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 707
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 708
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_1

    :cond_1c
    const/4 p1, 0x0

    :goto_1
    if-eqz p0, :cond_1d

    .line 711
    :try_start_12
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    .line 717
    :cond_1d
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result p0

    if-eqz p0, :cond_1e

    if-eqz p1, :cond_1e

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->sessionId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    .line 718
    iget-object p0, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->sessionId:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->threadId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 719
    sget-object p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sImSessionIdThreadIdMap:Ljava/util/Map;

    if-eqz p2, :cond_1e

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    .line 720
    sget-object p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sImSessionIdThreadIdMap:Ljava/util/Map;

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "im key : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "im value : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1f

    .line 659
    :try_start_13
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_14
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1f
    :goto_2
    throw p1

    :cond_20
    :goto_3
    if-eqz p0, :cond_21

    .line 711
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    :cond_21
    return v1

    :catch_0
    move-exception p0

    const-string p1, "checkDuplication(): error"

    .line 712
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private static checkChatDuplication4SMS(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;)Z
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "im"

    .line 380
    sget-object v3, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_CHAT4SMS_CHECK_PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_10

    .line 382
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 386
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "date"

    .line 387
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v1, "type"

    .line 388
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    .line 389
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "address"

    .line 390
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_1

    .line 392
    iget-object v4, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->type:Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_1
    if-eqz v1, :cond_4

    iget-object v4, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    :cond_2
    if-eqz p0, :cond_3

    .line 404
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return v0

    :cond_4
    if-nez v2, :cond_5

    .line 395
    :try_start_3
    iget-object v1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->body:Ljava/lang/String;

    if-nez v1, :cond_6

    :cond_5
    if-eqz v2, :cond_8

    iget-object v1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->body:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_8

    :cond_6
    if-eqz p0, :cond_7

    .line 404
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    return v0

    .line 399
    :cond_8
    :try_start_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    if-nez v3, :cond_a

    .line 401
    iget-object v1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->address:Ljava/lang/String;

    if-nez v1, :cond_b

    :cond_a
    if-eqz v3, :cond_d

    iget-object v1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->address:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_d

    :cond_b
    if-eqz p0, :cond_c

    .line 404
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_c
    return v0

    :cond_d
    :goto_0
    if-eqz p0, :cond_e

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 410
    :cond_e
    new-instance p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result v8

    const-string v3, "chat"

    move-object v2, p0

    move-wide v6, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;-><init>(Ljava/lang/String;JJI)V

    .line 411
    sget-object p1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateItemMap:Ljava/util/TreeMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_f

    .line 380
    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f
    :goto_1
    throw p1

    :cond_10
    :goto_2
    if-eqz p0, :cond_11

    .line 404
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_11
    return v0

    :catch_0
    move-exception p0

    const-string p1, "TP/BnRDuplicateChecker"

    const-string p2, "checkDuplication(): error"

    .line 405
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static checkDuplicateMMSWithFT(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "ft"

    .line 1063
    sget-object v3, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_CHECK_IMDN_PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_5

    .line 1065
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1069
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p1, "imdn_message_id"

    .line 1070
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1072
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    .line 1075
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p1

    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_4

    .line 1063
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p1

    :cond_5
    :goto_1
    if-eqz p0, :cond_6

    .line 1075
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    return v0

    :catch_0
    move-exception p0

    const-string p1, "TP/BnRDuplicateChecker"

    const-string p2, "checkFTDuplication(): error"

    .line 1076
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static checkFTDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;)Z
    .locals 10

    const-string v0, "TP/BnRDuplicateChecker"

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "ft"

    .line 879
    sget-object v4, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_FT_CHECK_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1e

    .line 881
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 885
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p1, "rcsdb_id"

    .line 886
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "date"

    .line 887
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "thread_id"

    .line 888
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    .line 889
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "imdn_message_id"

    .line 890
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 893
    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->imdnMessageId:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    if-eqz p0, :cond_1

    .line 928
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v1

    :cond_2
    if-eqz v4, :cond_4

    .line 896
    :try_start_3
    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->type:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_4

    if-eqz p0, :cond_3

    .line 928
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return v1

    .line 899
    :cond_4
    :try_start_5
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRUtils;->getEnableJansky()Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "from_address"

    .line 900
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 901
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->fromAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_0

    :cond_5
    if-nez p1, :cond_6

    .line 903
    iget-object v2, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->fromAddress:Ljava/lang/String;

    if-nez v2, :cond_7

    :cond_6
    if-eqz p1, :cond_19

    iget-object v2, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->fromAddress:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p1, :cond_19

    :cond_7
    if-eqz p0, :cond_8

    .line 928
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_8
    return v1

    :cond_9
    if-nez p1, :cond_a

    .line 908
    :try_start_7
    iget-object v5, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->rcsdbId:Ljava/lang/String;

    if-nez v5, :cond_b

    :cond_a
    if-eqz p1, :cond_d

    iget-object v5, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->rcsdbId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez p1, :cond_d

    :cond_b
    if-eqz p0, :cond_c

    .line 928
    :try_start_8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_c
    return v1

    :cond_d
    if-nez v2, :cond_e

    .line 911
    :try_start_9
    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->date:Ljava/lang/String;

    if-nez p1, :cond_f

    :cond_e
    if-eqz v2, :cond_11

    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->date:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez p1, :cond_11

    :cond_f
    if-eqz p0, :cond_10

    .line 928
    :try_start_a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_10
    return v1

    :cond_11
    if-nez v3, :cond_12

    .line 914
    :try_start_b
    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->threadId:Ljava/lang/String;

    if-nez p1, :cond_13

    :cond_12
    if-eqz v3, :cond_15

    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->threadId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez p1, :cond_15

    :cond_13
    if-eqz p0, :cond_14

    .line 928
    :try_start_c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :cond_14
    return v1

    :cond_15
    if-nez v4, :cond_16

    .line 917
    :try_start_d
    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->type:Ljava/lang/String;

    if-nez p1, :cond_17

    :cond_16
    if-eqz v4, :cond_19

    iget-object p1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->type:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez p1, :cond_19

    :cond_17
    if-eqz p0, :cond_18

    .line 928
    :try_start_e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :cond_18
    return v1

    .line 922
    :cond_19
    :goto_0
    :try_start_f
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1a

    const-string p1, "chat_session_id"

    .line 923
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 924
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 925
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_1

    :cond_1a
    const/4 p1, 0x0

    :goto_1
    if-eqz p0, :cond_1b

    .line 928
    :try_start_10
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .line 934
    :cond_1b
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isSupportOgcSessionUpdate()Z

    move-result p0

    if-eqz p0, :cond_1c

    if-eqz p1, :cond_1c

    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->chatSessionId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    .line 935
    iget-object p0, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->chatSessionId:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->threadId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    .line 936
    sget-object p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sFtSessionIdThreadIdMap:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    .line 937
    sget-object p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sFtSessionIdThreadIdMap:Ljava/util/Map;

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ft key : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ft value : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1d

    .line 879
    :try_start_11
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_12
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_2
    throw p1

    :cond_1e
    :goto_3
    if-eqz p0, :cond_1f

    .line 928
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    :cond_1f
    return v1

    :catch_0
    move-exception p0

    const-string p1, "checkFTDuplication(): error"

    .line 929
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private static checkFTDuplicationWithMMS(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "pdu"

    .line 1141
    sget-object v3, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_MID_CHECK_PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_7

    .line 1143
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1147
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string p1, "m_id"

    .line 1148
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    if-eqz p1, :cond_4

    .line 1149
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    :cond_2
    if-eqz p0, :cond_3

    .line 1152
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0

    :cond_4
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 1141
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw p1

    :cond_7
    :goto_1
    if-eqz p0, :cond_8

    .line 1152
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_8
    return v0

    :catch_0
    move-exception p0

    const-string p1, "TP/BnRDuplicateChecker"

    const-string p2, "checkFTDuplicationWithMMS(): error"

    .line 1153
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static checkSMSDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;)Z
    .locals 1

    const-string v0, "sms"

    .line 216
    invoke-static {p0, p1, p2, v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->checkSMSDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static checkSMSDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "sms"

    .line 221
    sget-object v3, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_SMS_CHECK_PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_18

    .line 223
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 227
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "date"

    .line 228
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 230
    sget-boolean v2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableSmsServerTime:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableCarrierServerSync:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 232
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :cond_2
    :goto_0
    const-string v2, "type"

    .line 237
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    .line 238
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "address"

    .line 239
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 241
    sget-boolean v5, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableCarrierServerSync:Z

    if-nez v5, :cond_6

    if-nez v1, :cond_3

    iget-object v5, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->date:Ljava/lang/String;

    if-nez v5, :cond_4

    :cond_3
    if-eqz v1, :cond_6

    iget-object v5, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->date:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_6

    :cond_4
    if-eqz p0, :cond_5

    .line 256
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    return v0

    :cond_6
    if-nez v2, :cond_7

    .line 244
    :try_start_3
    iget-object v1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->type:Ljava/lang/String;

    if-nez v1, :cond_8

    :cond_7
    if-eqz v2, :cond_a

    iget-object v1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_a

    :cond_8
    if-eqz p0, :cond_9

    .line 256
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_9
    return v0

    :cond_a
    if-nez v3, :cond_b

    .line 247
    :try_start_5
    iget-object v1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->body:Ljava/lang/String;

    if-nez v1, :cond_c

    :cond_b
    if-eqz v3, :cond_e

    iget-object v1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->body:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v1, :cond_e

    :cond_c
    if-eqz p0, :cond_d

    .line 256
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_d
    return v0

    .line 251
    :cond_e
    :try_start_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_1

    :cond_f
    if-nez v4, :cond_10

    .line 253
    iget-object v1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->address:Ljava/lang/String;

    if-nez v1, :cond_11

    :cond_10
    if-eqz v4, :cond_13

    iget-object v1, p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->address:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v1, :cond_13

    :cond_11
    if-eqz p0, :cond_12

    .line 256
    :try_start_8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_12
    return v0

    :cond_13
    :goto_1
    if-eqz p0, :cond_14

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 262
    :cond_14
    sget-boolean p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableCarrierServerSync:Z

    if-eqz p0, :cond_16

    const-string p0, "sms"

    .line 263
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 264
    new-instance p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result v9

    const-string v4, "sms"

    move-object v3, p0

    move-wide v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;-><init>(Ljava/lang/String;JJI)V

    .line 265
    sget-object p1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateItemMap:Ljava/util/TreeMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 267
    :cond_15
    new-instance p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result v9

    const-string v4, "sms"

    move-object v3, p0

    move-wide v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;-><init>(Ljava/lang/String;JJI)V

    .line 268
    sget-object p1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateSMSItemMap:Ljava/util/TreeMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    :goto_2
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_17

    .line 221
    :try_start_9
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_17
    :goto_3
    throw p1

    :cond_18
    :goto_4
    if-eqz p0, :cond_19

    .line 256
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_19
    return v0

    :catch_0
    move-exception p0

    const-string p1, "TP/BnRDuplicateChecker"

    const-string p2, "checkDuplication(): error"

    .line 257
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static clearAllItemsMap()V
    .locals 2

    .line 1198
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1199
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1200
    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    .line 1203
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChat4SMSItemsMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1204
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1205
    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChat4SMSItemsMap:Ljava/util/Map;

    .line 1208
    :cond_1
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1209
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1210
    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    .line 1213
    :cond_2
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFtItemsMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 1214
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1215
    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFtItemsMap:Ljava/util/Map;

    .line 1218
    :cond_3
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemInfoMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 1219
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1220
    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemInfoMap:Ljava/util/Map;

    .line 1223
    :cond_4
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateItemMap:Ljava/util/TreeMap;

    if-eqz v0, :cond_5

    .line 1224
    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 1225
    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateItemMap:Ljava/util/TreeMap;

    .line 1228
    :cond_5
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateSMSItemMap:Ljava/util/TreeMap;

    if-eqz v0, :cond_6

    .line 1229
    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 1230
    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateSMSItemMap:Ljava/util/TreeMap;

    .line 1233
    :cond_6
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mMmsMIdItemsMap:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 1234
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1235
    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mMmsMIdItemsMap:Ljava/util/Map;

    .line 1238
    :cond_7
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFTImdnIdMap:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 1239
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1240
    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFTImdnIdMap:Ljava/util/Map;

    .line 1243
    :cond_8
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sImSessionIdThreadIdMap:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 1244
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1247
    :cond_9
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sFtSessionIdThreadIdMap:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 1248
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_a
    return-void
.end method

.method public static declared-synchronized clearCandidateItemMap()V
    .locals 2

    const-class v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateItemMap:Ljava/util/TreeMap;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateItemMap:Ljava/util/TreeMap;

    goto :goto_0

    .line 105
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateItemMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized clearCandidateSMSItemMap()V
    .locals 2

    const-class v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateSMSItemMap:Ljava/util/TreeMap;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateSMSItemMap:Ljava/util/TreeMap;

    goto :goto_0

    .line 113
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateSMSItemMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static createSMSItemByChat(Landroid/content/ContentValues;)Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;
    .locals 4

    const-string v0, "date"

    .line 326
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    .line 327
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    .line 328
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "address"

    .line 329
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 331
    new-instance v3, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static findClosestItem(J)Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;
    .locals 1

    .line 416
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateItemMap:Ljava/util/TreeMap;

    invoke-static {p0, p1, v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->findClosestItem(JLjava/util/TreeMap;)Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;

    move-result-object p0

    return-object p0
.end method

.method public static findClosestItem(JLjava/util/TreeMap;)Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;",
            ">;)",
            "Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;"
        }
    .end annotation

    const-string v0, "TP/BnRDuplicateChecker"

    const-wide/16 v1, 0x0

    .line 428
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findClosestItem floorKey e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v1

    .line 433
    :goto_0
    :try_start_1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 435
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findClosestItem ceilingKey e : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v1

    :goto_1
    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 439
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;

    return-object p0

    :cond_0
    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    .line 441
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;

    return-object p0

    :cond_1
    sub-long v0, p0, v3

    sub-long p0, v5, p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_2

    .line 449
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;

    return-object p0

    .line 451
    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;

    return-object p0
.end method

.method public static findClosestSMSItem(J)Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;
    .locals 1

    .line 420
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mCandidateSMSItemMap:Ljava/util/TreeMap;

    invoke-static {p0, p1, v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->findClosestItem(JLjava/util/TreeMap;)Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;

    move-result-object p0

    return-object p0
.end method

.method static getFtSessionIdThreadIdMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1181
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sFtSessionIdThreadIdMap:Ljava/util/Map;

    return-object v0
.end method

.method static getImSessionIdThreadIdMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1169
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sImSessionIdThreadIdMap:Ljava/util/Map;

    return-object v0
.end method

.method static getSessionIdThreadIdMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1187
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sImSessionIdThreadIdMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1188
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1190
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sFtSessionIdThreadIdMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1191
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    return-object v0
.end method

.method private static declared-synchronized initChatItemInfoMap()V
    .locals 2

    const-class v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;

    monitor-enter v0

    .line 539
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemInfoMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 540
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemInfoMap:Ljava/util/Map;

    goto :goto_0

    .line 542
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initDuplicateChecker(Z)V
    .locals 0

    .line 118
    sput-boolean p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableCarrierServerSync:Z

    return-void
.end method

.method public static initDuplicateChecker(ZZ)V
    .locals 0

    .line 122
    sput-boolean p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableSmsServerTime:Z

    .line 123
    sput-boolean p1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableCarrierServerSync:Z

    return-void
.end method

.method static declared-synchronized initFtSessionIdThreadIdMap()V
    .locals 2

    const-class v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;

    monitor-enter v0

    .line 1173
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sFtSessionIdThreadIdMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sFtSessionIdThreadIdMap:Ljava/util/Map;

    goto :goto_0

    .line 1176
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sFtSessionIdThreadIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1178
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static initImSessionIdThreadIdMap()V
    .locals 1

    .line 1161
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sImSessionIdThreadIdMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sImSessionIdThreadIdMap:Ljava/util/Map;

    goto :goto_0

    .line 1164
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :goto_0
    return-void
.end method

.method public static declared-synchronized initLoadedChat4SMSItemMap()V
    .locals 2

    const-class v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;

    monitor-enter v0

    .line 346
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChat4SMSItemsMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 347
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChat4SMSItemsMap:Ljava/util/Map;

    goto :goto_0

    .line 349
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChat4SMSItemsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initLoadedFTItemMap()V
    .locals 2

    const-class v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;

    monitor-enter v0

    .line 803
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFtItemsMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 804
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFtItemsMap:Ljava/util/Map;

    goto :goto_0

    .line 806
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFtItemsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isDuplicateFTWithMMSItem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1126
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mMmsMIdItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mMmsMIdItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1130
    invoke-static {p0, v1, p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->checkFTDuplicationWithMMS(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "TP/BnRDuplicateChecker"

    const-string p1, "isDuplicateFTWithMMSItem(): duplicated!"

    .line 1131
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDuplicateMMSWithFTItem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 2

    .line 1049
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFTImdnIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFTImdnIdMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1051
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1052
    invoke-static {p0, v1, p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->checkDuplicateMMSWithFT(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDuplicatedChatItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;)Z
    .locals 3

    .line 625
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 627
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 628
    invoke-static {p0, v1, p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->checkChatDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    .line 630
    sget-boolean p1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableCarrierServerSync:Z

    if-eqz p1, :cond_2

    .line 631
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->removeDuplicateChatinHashMap(J)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method

.method public static isDuplicatedChatWithSMSItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;)Z
    .locals 4

    .line 200
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 201
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-string v3, "chat"

    .line 203
    invoke-static {p0, v2, p1, v3}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->checkSMSDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 205
    sget-boolean v2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableCarrierServerSync:Z

    if-nez v2, :cond_0

    :cond_1
    return v1
.end method

.method static isDuplicatedFTItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;)Z
    .locals 2

    .line 864
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFtItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFtItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 866
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 867
    invoke-static {p0, v1, p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->checkFTDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDuplicatedSMSItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;)Z
    .locals 3

    .line 183
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 184
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 186
    invoke-static {p0, v2, p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->checkSMSDuplication(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 188
    sget-boolean v2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableCarrierServerSync:Z

    if-nez v2, :cond_0

    :cond_1
    return v1
.end method

.method public static isDuplicatedSMSWithChatItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;)Z
    .locals 3

    .line 366
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChat4SMSItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 367
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChat4SMSItemsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 369
    invoke-static {p0, v2, p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->checkChatDuplication4SMS(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isDuplicationRCS(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 2

    .line 507
    invoke-static {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "im"

    .line 509
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "TP/BnRDuplicateChecker"

    if-eqz p1, :cond_0

    .line 510
    new-instance p1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;

    invoke-direct {p1, p2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;-><init>(Landroid/content/ContentValues;)V

    .line 511
    invoke-static {p0, p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicatedChatItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Duplicated IM item"

    .line 512
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 516
    :cond_0
    new-instance p1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;

    invoke-direct {p1, p2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;-><init>(Landroid/content/ContentValues;)V

    .line 517
    invoke-static {p0, p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->isDuplicatedFTItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Duplicated FT item"

    .line 518
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static isSupportOgcSessionUpdate()Z
    .locals 1

    .line 127
    sget-boolean v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableCarrierServerSync:Z

    return v0
.end method

.method private static loadExistingChat4SMSItem(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 354
    new-instance v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    sget-object p1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChat4SMSItemsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 356
    sget-object p1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChat4SMSItemsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_0
    sget-object p1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChat4SMSItemsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 359
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result p0

    return p0
.end method

.method private static loadExistingChatItem(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 613
    new-instance v8, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, p0

    .line 618
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-virtual {v8}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemDescription;->hashCode()I

    move-result v0

    return v0
.end method

.method public static loadExistingChatItems(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 21

    move/from16 v0, p1

    if-nez p0, :cond_0

    const-string v0, "TP/BnRDuplicateChecker"

    const-string v1, "loadChatExistingItems(): failed!"

    .line 548
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 552
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sLoadChatSyncObject:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_2

    .line 553
    :try_start_0
    sget-object v2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "TP/BnRDuplicateChecker"

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceLoad = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " and alredy loaded Chat Items"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    monitor-exit v1

    return-void

    .line 554
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    goto :goto_1

    .line 557
    :cond_3
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 563
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 565
    sget-boolean v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableCarrierServerSync:Z

    if-eqz v0, :cond_4

    .line 566
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initChatItemInfoMap()V

    .line 567
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initLoadedChat4SMSItemMap()V

    :cond_4
    :try_start_1
    const-string v2, "im"

    .line 570
    sget-object v3, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_CHAT_CHECK_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_7

    :try_start_2
    const-string v0, "_id"

    .line 572
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v2, "imdn_message_id"

    .line 573
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "rcsdb_id"

    .line 574
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "date"

    .line 575
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "thread_id"

    .line 576
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "type"

    .line 577
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "from_address"

    .line 578
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "session_id"

    .line 579
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "body"

    .line 580
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "address"

    .line 581
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 583
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 585
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 586
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 587
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 588
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 589
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 590
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 591
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 592
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 p0, v13

    move-object v13, v11

    move-object/from16 v16, v12

    move-object/from16 v18, p0

    .line 594
    invoke-static/range {v13 .. v20}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingChatItem(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 597
    sget-boolean v14, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mEnableCarrierServerSync:Z

    if-eqz v14, :cond_5

    .line 598
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 599
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 p1, v0

    move-object/from16 v0, p0

    .line 600
    invoke-static {v11, v12, v0, v14, v15}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingChat4SMSItem(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 601
    new-instance v12, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;

    invoke-direct {v12, v13, v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;-><init>(II)V

    .line 602
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemInfoMap:Ljava/util/Map;

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_5
    move/from16 p1, v0

    :goto_3
    move/from16 v0, p1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_6

    .line 570
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v2

    :cond_7
    if-eqz v1, :cond_8

    .line 606
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    const-string v0, "TP/BnRDuplicateChecker"

    const-string v1, "loadExistingChatItems(): failed!"

    .line 607
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_5
    return-void

    :catchall_2
    move-exception v0

    .line 563
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public static declared-synchronized loadExistingFTImdnIdItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    const-class v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "TP/BnRDuplicateChecker"

    const-string v1, "loadExistingFTImdnIdItems(): failed!"

    .line 1021
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1022
    monitor-exit v0

    return-void

    .line 1025
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFTImdnIdMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 1026
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFTImdnIdMap:Ljava/util/Map;

    goto :goto_0

    .line 1028
    :cond_1
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFTImdnIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    const-string v3, "ft"

    .line 1031
    sget-object v4, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_CHECK_IMDN_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1032
    :goto_1
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "_id"

    .line 1033
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "imdn_message_id"

    .line 1034
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1035
    sget-object v3, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFTImdnIdMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1036
    sget-object v3, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFTImdnIdMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    :cond_2
    sget-object v3, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFTImdnIdMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1039
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_5

    .line 1041
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_4

    .line 1031
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    :try_start_7
    const-string p0, "TP/BnRDuplicateChecker"

    const-string v1, "loadExistingFTImdnIdItems(): failed!"

    .line 1042
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1044
    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static loadExistingFTItem(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 853
    new-instance v9, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFtItemsMap:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFtItemsMap:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mFtItemsMap:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$FTItemDescription;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, p0

    .line 859
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static loadExistingFTItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 23

    const-string v1, "loadExistingFTItems(): failed!"

    const-string v2, "TP/BnRDuplicateChecker"

    if-nez p0, :cond_0

    .line 812
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 816
    :cond_0
    invoke-static {}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->initLoadedFTItemMap()V

    :try_start_0
    const-string v4, "ft"

    .line 818
    sget-object v5, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_FT_CHECK_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    :try_start_1
    const-string v0, "_id"

    .line 820
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v4, "rcsdb_id"

    .line 821
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "date"

    .line 822
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "thread_id"

    .line 823
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "type"

    .line 824
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "imdn_message_id"

    .line 825
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "from_address"

    .line 826
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "session_id"

    .line 827
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "chat_session_id"

    .line 828
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 830
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 831
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 832
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 833
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 834
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 835
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 836
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 837
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 838
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 839
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 841
    invoke-static/range {v14 .. v22}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingFTItem(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_1

    .line 818
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v4

    :cond_2
    if-eqz v3, :cond_3

    .line 845
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 846
    :catch_0
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public static declared-synchronized loadExistingMMSMIdItems(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    const-class v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "TP/BnRDuplicateChecker"

    const-string v1, "loadExistingFTItems(): failed!"

    .line 1090
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1091
    monitor-exit v0

    return-void

    .line 1094
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mMmsMIdItemsMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 1095
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mMmsMIdItemsMap:Ljava/util/Map;

    goto :goto_0

    .line 1097
    :cond_1
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mMmsMIdItemsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    const-string v3, "pdu"

    .line 1100
    sget-object v4, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_MID_CHECK_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p0, :cond_7

    .line 1102
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    .line 1106
    :cond_2
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "_id"

    .line 1107
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "m_id"

    .line 1108
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1111
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1113
    :cond_3
    sget-object v3, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mMmsMIdItemsMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1114
    sget-object v3, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mMmsMIdItemsMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    :cond_4
    sget-object v3, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mMmsMIdItemsMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1117
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_5
    if-eqz p0, :cond_9

    .line 1119
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_6

    .line 1100
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw v1

    :cond_7
    :goto_3
    if-eqz p0, :cond_8

    .line 1119
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1103
    :cond_8
    monitor-exit v0

    return-void

    :catch_0
    :try_start_7
    const-string p0, "TP/BnRDuplicateChecker"

    const-string v1, "loadExistingMMSItems(): failed!"

    .line 1120
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1122
    :cond_9
    :goto_4
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static loadExistingSMSItem(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 173
    new-instance v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object p1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 175
    sget-object p1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    sget-object p1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$SMSItemDescription;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 178
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static loadExistingSMSItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)V
    .locals 9

    if-nez p0, :cond_0

    const-string p0, "TP/BnRDuplicateChecker"

    const-string p1, "loadExistingItems(): failed!"

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_0
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->sLoadSMSSyncObject:Ljava/lang/Object;

    monitor-enter v0

    if-nez p2, :cond_2

    .line 146
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "TP/BnRDuplicateChecker"

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceLoad = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " and alredy loaded SMS Items"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    monitor-exit v0

    return-void

    .line 147
    :cond_2
    :goto_0
    sget-object p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    if-nez p2, :cond_3

    .line 148
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    sput-object p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    goto :goto_1

    .line 150
    :cond_3
    sget-object p2, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 156
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v2, "sms"

    .line 158
    sget-object v3, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->DUPLICATION_SMS_CHECK_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :goto_2
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "_id"

    .line 160
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "date"

    .line 161
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "type"

    .line 162
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "body"

    .line 163
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    .line 164
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->loadExistingSMSItem(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_4
    if-eqz p0, :cond_6

    .line 167
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 158
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    const-string p0, "TP/BnRDuplicateChecker"

    const-string p1, "loadExistingItems(): failed!"

    .line 168
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return-void

    :catchall_2
    move-exception p0

    .line 156
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method private static removeDuplicateChatinHashMap(J)V
    .locals 3

    .line 642
    sget-object v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemInfoMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;

    .line 644
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChat4SMSItemsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;->getChat4SMSHashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 645
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 646
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChat4SMSItemsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;->getChat4SMSHashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;->getChatHashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 651
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 652
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 653
    sget-object p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;->getChatHashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static declared-synchronized removeDuplicateMsginHashMap(Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;)V
    .locals 6

    const-class v0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;

    monitor-enter v0

    .line 476
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;->getCandidateType()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;->getCandidateMsgId()J

    move-result-wide v2

    .line 478
    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;->getCandidateItemMapHashcode()I

    move-result p0

    const-string v4, "sms"

    .line 480
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 482
    sget-object v4, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 483
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 484
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 485
    sget-object v4, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mSMSItemsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 489
    :cond_0
    sget-object v4, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChat4SMSItemsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 490
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 491
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 492
    sget-object v4, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChat4SMSItemsMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_1
    sget-object p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemInfoMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;

    .line 497
    sget-object v4, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;->getChatHashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 498
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 499
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 500
    sget-object v4, Lcom/android/providers/telephony/backup/BnRDuplicateChecker;->mChatItemsMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$ChatItemInfo;->getChatHashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    const-string p0, "TP/BnRDuplicateChecker"

    .line 503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "table : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " removeDuplicatedMsginHashMap"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static updateDuplicateMsgTimeStamp(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;J)V
    .locals 5

    .line 458
    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;->getCandidateType()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-virtual {p1}, Lcom/android/providers/telephony/backup/BnRDuplicateChecker$CandidateItem;->getCandidateMsgId()J

    move-result-wide v1

    .line 461
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 462
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 463
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "date"

    invoke-virtual {v3, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "sms"

    .line 465
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    .line 467
    invoke-virtual {p0, p2, v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p2, "im"

    .line 470
    invoke-virtual {p0, p2, v3, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 472
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "table : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " id : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " updateDuplicatedMsgTimeStamp affectedCount : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TP/BnRDuplicateChecker"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
