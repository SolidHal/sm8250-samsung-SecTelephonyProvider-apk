.class public Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TelephonyProvider.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/providers/telephony/TelephonyProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/telephony/TelephonyProvider;Landroid/content/Context;)V
    .locals 2

    .line 1000
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    .line 1001
    invoke-static {p2}, Lcom/android/providers/telephony/TelephonyProvider;->getVersion(Landroid/content/Context;)I

    move-result p1

    const-string v0, "telephony.db"

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1002
    iput-object p2, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-wide/16 p1, 0x7530

    .line 1004
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;->setIdleConnectionTimeout(J)V

    const/4 p1, 0x0

    .line 1005
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 991
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;)Z
    .locals 0

    .line 991
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->apnDbUpdateNeeded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3100(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;)Z
    .locals 0

    .line 991
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mpsDbUpdateNeeded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .locals 0

    .line 991
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabaseForMultiSim(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 0

    .line 991
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadPersistentApnData(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 991
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->deleteRowWhereVzwNumeric(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 991
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->deleteRowWhereSprNumeric(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/content/ContentValues;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    .line 991
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->copyAllApnValuesToString(Landroid/content/ContentValues;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    .line 2915
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2917
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method private addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    .line 2907
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2909
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x0

    .line 2899
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2901
    invoke-virtual {p3, p4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private apnDbUpdateNeeded()Z
    .locals 5

    .line 1180
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getApnConfFile()Ljava/io/File;

    move-result-object v0

    .line 1181
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getChecksum(Ljava/io/File;)J

    move-result-wide v0

    .line 1182
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getApnConfChecksum()J

    move-result-wide v2

    .line 1183
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newChecksum: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1184
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oldChecksum: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private copyAllApnValues(Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "_id"

    .line 2582
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "name"

    .line 2586
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "numeric"

    .line 2587
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mcc"

    .line 2588
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mnc"

    .line 2589
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "apn"

    .line 2590
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "user"

    .line 2591
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "server"

    .line 2592
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "password"

    .line 2593
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "proxy"

    .line 2594
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "port"

    .line 2595
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mmsproxy"

    .line 2596
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mmsport"

    .line 2597
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mmsc"

    .line 2598
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "type"

    .line 2599
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "protocol"

    .line 2600
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "roaming_protocol"

    .line 2601
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mvno_type"

    .line 2602
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mvno_match_data"

    .line 2603
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "authtype"

    .line 2606
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "current"

    .line 2607
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "carrier_enabled"

    .line 2608
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "bearer"

    .line 2609
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "sub_id"

    .line 2610
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "profile_id"

    .line 2611
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "modem_cognitive"

    .line 2612
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "max_conns"

    .line 2613
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "wait_time"

    .line 2614
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "max_conns_time"

    .line 2615
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mtu"

    .line 2616
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "network_type_bitmask"

    .line 2617
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "bearer_bitmask"

    .line 2618
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "edited"

    .line 2619
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "user_visible"

    .line 2620
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "user_editable"

    .line 2621
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "owned_by"

    .line 2622
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "apn_set_id"

    .line 2623
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "skip_464xlat"

    .line 2624
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "current1"

    .line 2626
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "sim_slot"

    .line 2627
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method private copyAllApnValuesToString(Landroid/content/ContentValues;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 45

    move-object/from16 v0, p2

    .line 2632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id"

    const-string v3, "name"

    const-string v4, "numeric"

    const-string v5, "mcc"

    const-string v6, "mnc"

    const-string v7, "carrier_id"

    const-string v8, "apn"

    const-string v9, "user"

    const-string v10, "server"

    const-string v11, "password"

    const-string v12, "proxy"

    const-string v13, "port"

    const-string v14, "mmsproxy"

    const-string v15, "mmsport"

    const-string v16, "mmsc"

    const-string v17, "mmsc"

    const-string v18, "authtype"

    const-string v19, "current"

    const-string v20, "current1"

    const-string v21, "type"

    const-string v22, "sim_slot"

    const-string v23, "protocol"

    const-string v24, "roaming_protocol"

    const-string v25, "carrier_enabled"

    const-string v26, "bearer"

    const-string v27, "bearer_bitmask"

    const-string v28, "network_type_bitmask"

    const-string v29, "mvno_type"

    const-string v30, "mvno_match_data"

    const-string v31, "sub_id"

    const-string v32, "profile_id"

    const-string v33, "modem_cognitive"

    const-string v34, "max_conns"

    const-string v35, "wait_time"

    const-string v36, "max_conns_time"

    const-string v37, "mtu"

    const-string v38, "edited"

    const-string v39, "user_visible"

    const-string v40, "user_editable"

    const-string v41, "owned_by"

    const-string v42, "apn_set_id"

    const-string v43, "roaming"

    const-string v44, "skip_464xlat"

    .line 2633
    filled-new-array/range {v2 .. v44}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x2b

    if-ge v3, v4, :cond_3

    .line 2640
    aget-object v4, v2, v3

    .line 2641
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2643
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2644
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v5, "null"

    :cond_0
    const-string v6, "type"

    .line 2647
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x2c

    const/16 v7, 0x7c

    .line 2648
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 2650
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2653
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyApnValuesV17(Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "_id"

    .line 2537
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "name"

    .line 2539
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "numeric"

    .line 2540
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mcc"

    .line 2541
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mnc"

    .line 2542
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "apn"

    .line 2543
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "user"

    .line 2544
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "server"

    .line 2545
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "password"

    .line 2546
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "proxy"

    .line 2547
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "port"

    .line 2548
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mmsproxy"

    .line 2549
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mmsport"

    .line 2550
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mmsc"

    .line 2551
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "type"

    .line 2552
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "protocol"

    .line 2553
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "roaming_protocol"

    .line 2554
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mvno_type"

    .line 2555
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mvno_match_data"

    .line 2556
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "authtype"

    .line 2559
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "current"

    .line 2560
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "carrier_enabled"

    .line 2561
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "bearer"

    .line 2562
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "sub_id"

    .line 2563
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "profile_id"

    .line 2564
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "modem_cognitive"

    .line 2565
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "max_conns"

    .line 2566
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "wait_time"

    .line 2567
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "max_conns_time"

    .line 2568
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mtu"

    .line 2569
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "bearer_bitmask"

    .line 2570
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "edited"

    .line 2571
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "user_visible"

    .line 2572
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "current1"

    .line 2575
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "sim_slot"

    .line 2576
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method private copyDataToTmpTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;I)V
    .locals 4

    if-eqz p2, :cond_1

    .line 2508
    :catch_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2509
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2510
    invoke-direct {p0, v0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->copyAllApnValues(Landroid/content/ContentValues;Landroid/database/Cursor;)V

    const/16 v1, 0x18

    if-ne p3, v1, :cond_0

    .line 2513
    invoke-direct {p0, v0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getNetworkTypeBitmaskFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;)V

    :cond_0
    :try_start_0
    const-string v1, "carriers_tmp"

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 2516
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private copyPreservedApnsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 13

    const-string v0, "mvno_type"

    const-string v1, "carriers_tmp"

    if-eqz p2, :cond_8

    .line 2658
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2660
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f010000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2662
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2663
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2668
    invoke-direct {p0, v7, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->copyApnValuesV17(Landroid/content/ContentValues;Landroid/database/Cursor;)V

    const-string v3, "bearer"

    .line 2670
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2671
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2672
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/providers/telephony/TelephonyProvider;->access$2300(I)I

    move-result v4

    const-string v5, "bearer_bitmask"

    .line 2673
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2676
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2675
    invoke-static {v3}, Lcom/android/providers/telephony/TelephonyProvider;->access$2400(I)I

    move-result v3

    const-string v4, "network_type_bitmask"

    .line 2677
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string v3, "user_edited"

    .line 2680
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, -0x1

    const/4 v5, 0x4

    const-string v6, "edited"

    if-eq v3, v4, :cond_2

    .line 2682
    :try_start_1
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2683
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2684
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v8}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 2687
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    :goto_1
    const-string v8, "numeric"

    .line 2694
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2695
    array-length v9, v2

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_7

    aget-object v11, v2, v10

    .line 2696
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 2697
    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2698
    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_4
    if-ne v3, v4, :cond_5

    .line 2700
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 2702
    :cond_5
    invoke-virtual {v7, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 2703
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 2712
    :try_start_2
    invoke-virtual {p1, v1, v3, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 2724
    :catch_0
    :try_start_3
    invoke-static {p1, v1, v7}, Lcom/android/providers/telephony/TelephonyProvider;->selectConflictingRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2727
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "carriers_tmp"

    const/4 v9, 0x1

    .line 2728
    iget-object v10, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v4, p1

    move-object v6, v3

    invoke-static/range {v4 .. v10}, Lcom/android/providers/telephony/TelephonyProvider;->mergeFieldsAndUpdateDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/content/ContentValues;ZLandroid/content/Context;)V

    .line 2730
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    const-string p0, "array.persist_apns_for_plmn is not found"

    .line 2735
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private copySimInfoDataToTmpTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 2125
    :catch_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2126
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2127
    invoke-direct {p0, v0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->copySimInfoValuesV24(Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 2134
    invoke-direct {p0, v0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getCardIdfromIccid(Landroid/content/ContentValues;Landroid/database/Cursor;)V

    :try_start_0
    const-string v1, "siminfo_tmp"

    const/4 v2, 0x0

    .line 2136
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private copySimInfoValuesV24(Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "icc_id"

    .line 2152
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "display_name"

    .line 2153
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "carrier_name"

    .line 2154
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "number"

    .line 2155
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "sim_id"

    .line 2158
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "name_source"

    .line 2159
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "color"

    .line 2160
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "display_number_format"

    .line 2161
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "data_roaming"

    .line 2162
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mcc"

    .line 2163
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "mnc"

    .line 2164
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "sim_provisioning_status"

    .line 2165
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "is_embedded"

    .line 2166
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "is_removable"

    .line 2167
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "enable_cmas_extreme_threat_alerts"

    .line 2168
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "enable_cmas_severe_threat_alerts"

    .line 2169
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "enable_cmas_amber_alerts"

    .line 2170
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "enable_emergency_alerts"

    .line 2171
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "alert_sound_duration"

    .line 2172
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "alert_reminder_interval"

    .line 2173
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "enable_alert_vibrate"

    .line 2174
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "enable_alert_speech"

    .line 2175
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "enable_etws_test_alerts"

    .line 2176
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "enable_channel_50_alerts"

    .line 2177
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "enable_cmas_test_alerts"

    .line 2178
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "show_cmas_opt_out_dialog"

    .line 2179
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "volte_vt_enabled"

    .line 2180
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "vt_ims_enabled"

    .line 2181
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "wfc_ims_enabled"

    .line 2182
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "wfc_ims_mode"

    .line 2183
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "wfc_ims_roaming_mode"

    .line 2184
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "wfc_ims_roaming_enabled"

    .line 2185
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    const-string v0, "access_rules"

    .line 2188
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getBlobValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method private createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dbh.createCarriersTable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1075
    :try_start_0
    invoke-static {p2}, Lcom/android/providers/telephony/TelephonyProvider;->getStringForCarrierTableCreation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception createCarriersTable e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS carriers"

    .line 1078
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1079
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_0
    const-string p0, "dbh.createCarriersTable:-"

    .line 1081
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    return-void
.end method

.method private createSimInfoTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dbh.createSimInfoTable:+ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1062
    :try_start_0
    invoke-static {p2}, Lcom/android/providers/telephony/TelephonyProvider;->getStringForSimInfoTableCreation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception createSimInfoTable e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS siminfo"

    .line 1065
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1066
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createSimInfoTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_0
    const-string p0, "dbh.createSimInfoTable:-"

    .line 1068
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    return-void
.end method

.method private deleteCarrierEdited(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 4

    const-string v0, "deleteCarrierEdited: delete row if only numeric(mcc,mnc) is same"

    .line 2459
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "edited"

    .line 2461
    invoke-direct {p0, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 2463
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 2464
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "carriers"

    .line 2475
    invoke-virtual {p1, p2, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private deleteMatchingApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    if-eqz p2, :cond_2

    .line 2272
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2273
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2274
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "VZW"

    const/4 v2, 0x0

    .line 2279
    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2280
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->deleteRowWhereNumeric(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 2282
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->deleteRow(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 2285
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2276
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Expected \'apn\' tag"

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 2292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteMatchingApns: Got SQLException while deleting apns."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 2290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteMatchingApns: Got IOException while deleting apns."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception p0

    .line 2288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteMatchingApns: Got XmlPullParserException while deleting apns."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private deleteRow(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 2315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric"

    invoke-direct {v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mcc"

    .line 2316
    invoke-direct {v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mnc"

    .line 2317
    invoke-direct {v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "apn"

    .line 2318
    invoke-direct {v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "user"

    .line 2319
    invoke-direct {v0, v4}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "server"

    .line 2320
    invoke-direct {v0, v5}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "password"

    .line 2321
    invoke-direct {v0, v6}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "proxy"

    .line 2322
    invoke-direct {v0, v7}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "port"

    .line 2323
    invoke-direct {v0, v8}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "mmsproxy"

    .line 2324
    invoke-direct {v0, v9}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "mmsport"

    .line 2325
    invoke-direct {v0, v10}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "mmsc"

    .line 2326
    invoke-direct {v0, v11}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "authtype"

    .line 2327
    invoke-direct {v0, v12}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "type"

    .line 2328
    invoke-direct {v0, v13}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "protocol"

    .line 2329
    invoke-direct {v0, v14}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "roaming_protocol"

    move-object/from16 v16, v14

    .line 2330
    invoke-direct {v0, v15}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "carrier_enabled"

    move-object/from16 v17, v15

    .line 2331
    invoke-direct {v0, v14}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryVal2OrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "bearer"

    move-object/from16 v18, v14

    .line 2332
    invoke-direct {v0, v15}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "mvno_type"

    move-object/from16 v19, v15

    .line 2333
    invoke-direct {v0, v14}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "mvno_match_data"

    move-object/from16 v20, v14

    .line 2334
    invoke-direct {v0, v15}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "profile_id"

    move-object/from16 v21, v15

    .line 2335
    invoke-direct {v0, v14}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "modem_cognitive"

    move-object/from16 v22, v14

    .line 2336
    invoke-direct {v0, v15}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryVal2OrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "max_conns"

    move-object/from16 v23, v15

    .line 2337
    invoke-direct {v0, v14}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "wait_time"

    .line 2338
    invoke-direct {v0, v15}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "max_conns_time"

    .line 2339
    invoke-direct {v0, v15}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "mtu"

    .line 2340
    invoke-direct {v0, v15}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1d

    new-array v2, v2, [Ljava/lang/String;

    const-string v15, "numeric"

    .line 2343
    invoke-virtual {v1, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v24, 0x0

    aput-object v15, v2, v24

    const-string v15, "mcc"

    .line 2344
    invoke-virtual {v1, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v24, 0x1

    aput-object v15, v2, v24

    const-string v15, "mnc"

    .line 2345
    invoke-virtual {v1, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v24, 0x2

    aput-object v15, v2, v24

    const-string v15, "name"

    .line 2346
    invoke-virtual {v1, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v24, 0x3

    aput-object v15, v2, v24

    .line 2347
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    const-string v24, ""

    if-eqz v15, :cond_0

    .line 2348
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, v24

    :goto_0
    const/4 v15, 0x4

    aput-object v3, v2, v15

    const/4 v3, 0x6

    .line 2349
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2350
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object/from16 v4, v24

    :goto_1
    const/4 v15, 0x5

    aput-object v4, v2, v15

    const/4 v4, 0x7

    .line 2351
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2352
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object/from16 v5, v24

    :goto_2
    aput-object v5, v2, v3

    const/16 v3, 0x8

    .line 2353
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2354
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object/from16 v5, v24

    :goto_3
    aput-object v5, v2, v4

    const/16 v4, 0x9

    .line 2355
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2356
    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object/from16 v5, v24

    :goto_4
    aput-object v5, v2, v3

    const/16 v3, 0xa

    .line 2357
    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2358
    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_5
    move-object/from16 v5, v24

    :goto_5
    aput-object v5, v2, v4

    const/16 v4, 0xb

    .line 2359
    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2360
    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_6
    move-object/from16 v5, v24

    :goto_6
    aput-object v5, v2, v3

    const/16 v3, 0xc

    .line 2361
    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2362
    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_7
    move-object/from16 v5, v24

    :goto_7
    aput-object v5, v2, v4

    const/16 v4, 0xd

    .line 2363
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2364
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_8
    move-object/from16 v5, v24

    :goto_8
    aput-object v5, v2, v3

    const/16 v3, 0xe

    .line 2365
    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2366
    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_9
    const-string v5, "-1"

    :goto_9
    aput-object v5, v2, v4

    const/16 v4, 0xf

    .line 2367
    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2368
    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_a
    move-object/from16 v5, v24

    :goto_a
    aput-object v5, v2, v3

    const/16 v3, 0x10

    move-object/from16 v5, v16

    .line 2369
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2370
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_b
    const-string v5, "IP"

    :goto_b
    aput-object v5, v2, v4

    const/16 v4, 0x11

    move-object/from16 v5, v17

    .line 2371
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2372
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :cond_c
    const-string v5, "IP"

    :goto_c
    aput-object v5, v2, v3

    move-object/from16 v3, v18

    .line 2374
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0x12

    .line 2375
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/providers/telephony/TelephonyProvider;->access$2000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 2376
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/telephony/TelephonyProvider;->access$2100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    goto :goto_d

    .line 2378
    :cond_d
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$2200()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v5, 0x12

    .line 2379
    invoke-static {v3}, Lcom/android/providers/telephony/TelephonyProvider;->access$2000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    aput-object v3, v2, v5

    :goto_d
    const/16 v3, 0x13

    const/16 v4, 0x14

    move-object/from16 v5, v19

    .line 2383
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "0"

    if-eqz v6, :cond_e

    .line 2384
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    :cond_e
    move-object v5, v7

    :goto_e
    aput-object v5, v2, v3

    const/16 v3, 0x15

    move-object/from16 v5, v20

    .line 2385
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2386
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :cond_f
    move-object/from16 v5, v24

    :goto_f
    aput-object v5, v2, v4

    const/16 v4, 0x16

    move-object/from16 v5, v21

    .line 2387
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2388
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    :cond_10
    aput-object v24, v2, v3

    const/16 v3, 0x17

    move-object/from16 v5, v22

    .line 2389
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 2390
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    :cond_11
    move-object v5, v7

    :goto_10
    aput-object v5, v2, v4

    move-object/from16 v4, v23

    .line 2392
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2393
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    .line 2394
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 2395
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    const/16 v4, 0x18

    const-string v5, "true"

    aput-object v5, v2, v3

    const-string v3, "1"

    aput-object v3, v2, v4

    goto :goto_11

    :cond_13
    const/16 v4, 0x18

    const-string v5, "false"

    aput-object v5, v2, v3

    aput-object v7, v2, v4

    :goto_11
    const/16 v3, 0x19

    const/16 v4, 0x1a

    .line 2403
    invoke-virtual {v1, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2404
    invoke-virtual {v1, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_12

    :cond_14
    const-string v5, "20"

    :goto_12
    aput-object v5, v2, v3

    const/16 v3, 0x1b

    const-string v5, "wait_time"

    .line 2405
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "wait_time"

    .line 2406
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    :cond_15
    move-object v5, v7

    :goto_13
    aput-object v5, v2, v4

    const/16 v4, 0x1c

    const-string v5, "max_conns_time"

    .line 2407
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "max_conns_time"

    .line 2408
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_14

    :cond_16
    const-string v5, "300"

    :goto_14
    aput-object v5, v2, v3

    const-string v3, "mtu"

    .line 2409
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "mtu"

    .line 2410
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_17
    aput-object v7, v2, v4

    const-string v1, "carriers"

    move-object/from16 v3, p1

    .line 2422
    invoke-virtual {v3, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private deleteRowWhereNumeric(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 5

    const-string v0, "deleteRowWhereNumeric: delete row if only numeric(mcc,mnc) is same"

    .line 2484
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mcc"

    .line 2486
    invoke-direct {p0, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mnc"

    .line 2487
    invoke-direct {p0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 2489
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 2490
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2491
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const-string p2, "carriers"

    .line 2502
    invoke-virtual {p1, p2, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private deleteRowWhereSprNumeric(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const-string v0, "310120"

    const-string v1, "310000"

    const-string v2, "311870"

    const-string v3, "312530"

    const-string v4, "311490"

    .line 2442
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 2450
    aget-object v2, v0, v1

    .line 2451
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "numeric"

    .line 2452
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 2453
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "edited"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2454
    invoke-direct {p0, p1, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->deleteCarrierEdited(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deleteRowWhereVzwNumeric(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    const-string v0, "311480"

    const-string v1, "20404"

    .line 2427
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 2432
    aget-object v3, v0, v2

    .line 2433
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "numeric"

    .line 2434
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    .line 2435
    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mcc"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "mnc"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    invoke-direct {p0, p1, v4}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->deleteRowWhereNumeric(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getApnConfChecksum()J
    .locals 3

    .line 1129
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v0, "telephonyprovider"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "apn_conf_checksum"

    const-wide/16 v1, -0x1

    .line 1130
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getApnConfFile()Ljava/io/File;
    .locals 6

    .line 1142
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/apns-conf.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1143
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "telephony/apns-conf.xml"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1144
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "misc/apns/apns-conf.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1145
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1146
    invoke-direct {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->pickSecondIfExists(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1147
    invoke-direct {p0, v0, v4}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->pickSecondIfExists(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1148
    invoke-direct {p0, v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->pickSecondIfExists(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getBlobValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1

    .line 2795
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 2797
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2799
    invoke-virtual {p1, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method private getCardIdfromIccid(Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 1

    const-string p0, "icc_id"

    .line 2192
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 2194
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2195
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "card_id"

    .line 2196
    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getChecksum(Ljava/io/File;)J
    .locals 7

    const-string v0, ":"

    .line 1085
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    const-wide/16 v2, -0x1

    .line 1087
    :try_start_0
    new-instance v4, Ljava/util/zip/CheckedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, v1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x80

    :try_start_1
    new-array v5, v5, [B

    .line 1091
    :goto_0
    invoke-virtual {v4, v5}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_0

    goto :goto_0

    .line 1095
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 1096
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checksum for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1097
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v5

    .line 1087
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v5
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v4

    .line 1100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v4

    .line 1098
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    .line 1105
    :goto_2
    :try_start_5
    iget-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x1170000

    .line 1106
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1107
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 1108
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 1109
    invoke-virtual {v1, p0}, Ljava/util/zip/CRC32;->update([B)V

    .line 1110
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1111
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Checksum after adding resource is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p1, :cond_2

    .line 1112
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_1

    .line 1105
    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception p0

    .line 1113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception when calculating checksum for internal apn resources: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    :cond_2
    :goto_4
    return-wide v2
.end method

.method private getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1

    .line 2781
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 2783
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2784
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2786
    :try_start_0
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private getMpsChecksum()J
    .locals 5

    .line 1154
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$400()V

    .line 1155
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$500()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, -0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1156
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getChecksum(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private getMpsChecksumSp()J
    .locals 3

    .line 1162
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v0, "mps"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "apn_mps_checksum"

    const-wide/16 v1, -0x1

    .line 1163
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getNetworkTypeBitmaskFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 5

    const-string v0, "network_type_bitmask"

    .line 2757
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "\\d+"

    const-string v3, "bearer_bitmask"

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 2759
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 2761
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2762
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2763
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 2764
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$2500(I)I

    move-result p0

    .line 2765
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 2769
    :cond_1
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v4, :cond_2

    .line 2771
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2772
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2773
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 2774
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$2600(I)I

    move-result p0

    .line 2775
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 9

    .line 2811
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 2815
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "mcc"

    .line 2817
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mnc"

    .line 2818
    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2819
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "numeric"

    .line 2821
    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "carrier"

    .line 2824
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "user"

    .line 2828
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "server"

    .line 2829
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "password"

    .line 2830
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "proxy"

    .line 2831
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "port"

    .line 2832
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "mmsproxy"

    .line 2833
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "mmsport"

    .line 2834
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "mmsc"

    .line 2835
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "type"

    .line 2837
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "\\s+"

    const-string v5, ""

    .line 2840
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2841
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "protocol"

    .line 2844
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "roaming_protocol"

    .line 2845
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "authtype"

    .line 2847
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "bearer"

    .line 2848
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "profile_id"

    .line 2849
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "max_conns"

    .line 2850
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "wait_time"

    .line 2851
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "max_conns_time"

    .line 2852
    invoke-direct {p0, p1, v1, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "mtu"

    const-string v3, "mtu"

    .line 2853
    invoke-direct {p0, p1, v1, v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "apn_set_id"

    const-string v3, "apn_set_id"

    .line 2854
    invoke-direct {p0, p1, v1, v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "roaming"

    const-string v3, "roaming"

    .line 2855
    invoke-direct {p0, p1, v1, v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "carrier_id"

    const-string v3, "carrier_id"

    .line 2856
    invoke-direct {p0, p1, v1, v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "skip_464xlat"

    const-string v3, "skip_464xlat"

    .line 2857
    invoke-direct {p0, p1, v1, v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "carrier_enabled"

    const-string v3, "carrier_enabled"

    .line 2859
    invoke-direct {p0, p1, v1, v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "modem_cognitive"

    const-string v3, "modem_cognitive"

    .line 2860
    invoke-direct {p0, p1, v1, v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "user_visible"

    const-string v3, "user_visible"

    .line 2861
    invoke-direct {p0, p1, v1, v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const-string v1, "user_editable"

    const-string v3, "user_editable"

    .line 2862
    invoke-direct {p0, p1, v1, v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    const/4 p0, 0x0

    const-string v1, "network_type_bitmask"

    .line 2865
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2867
    invoke-static {v3}, Lcom/android/providers/telephony/TelephonyProvider;->access$2700(Ljava/lang/String;)I

    move-result p0

    .line 2869
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 2873
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$2500(I)I

    move-result p0

    goto :goto_0

    :cond_3
    const-string p0, "bearer_bitmask"

    .line 2875
    invoke-interface {p1, v2, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 2877
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$2700(Ljava/lang/String;)I

    move-result v4

    .line 2880
    :cond_4
    invoke-static {v4}, Lcom/android/providers/telephony/TelephonyProvider;->access$2600(I)I

    move-result p0

    .line 2881
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move p0, v4

    .line 2883
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "bearer_bitmask"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "mvno_type"

    .line 2885
    invoke-interface {p1, v2, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string v1, "mvno_match_data"

    .line 2887
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "mvno_type"

    .line 2889
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mvno_match_data"

    .line 2890
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method private getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 1

    .line 2742
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 2744
    invoke-interface {p2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2745
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2746
    invoke-virtual {p1, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "edited=6"

    const-string v4, "edited=3"

    const-string v5, "edited=2 or edited=5"

    const-string v6, "edited"

    const-string v7, "carriers"

    .line 1207
    iget-object v0, v1, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v8, "version"

    const-string v9, "apns"

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    const/high16 v12, 0x1170000

    .line 1210
    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 1212
    :try_start_0
    invoke-static {v12, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1213
    invoke-interface {v12, v11, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1214
    :try_start_1
    invoke-direct {v1, v2, v12}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1218
    :goto_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v13, -0x1

    .line 1216
    :goto_1
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got exception while loading APN database."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1218
    :goto_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1219
    throw v0

    :cond_0
    const-string v0, "initDatabase: resources=null"

    .line 1221
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    const/4 v13, -0x1

    :goto_3
    const-string v0, "Get numeric items from MPS"

    .line 1224
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$602(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$702(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$802(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$902(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$1002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$1102(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$1202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1237
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->update()Ljava/lang/String;

    move-result-object v12

    const-string v0, "Set all numeric for comparison from MPS."

    .line 1238
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1239
    iget-object v0, v1, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    invoke-virtual {v0, v12}, Lcom/android/providers/telephony/TelephonyProvider;->getMpsNumeric(Ljava/lang/String;)V

    .line 1244
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getApnConfFile()Ljava/io/File;

    move-result-object v14

    .line 1247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "confFile = "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    const-string v0, "[TimeLap] loadApnsConfFile +"

    .line 1248
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    const/4 v15, 0x5

    const/16 v16, 0x2

    .line 1250
    :try_start_3
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v14}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1251
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1252
    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1253
    invoke-static {v0, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1256
    invoke-interface {v0, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v13, v8, :cond_1

    .line 1263
    invoke-direct {v1, v2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1279
    invoke-virtual {v2, v7, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1282
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1283
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1284
    invoke-virtual {v2, v7, v0, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1287
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1288
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1289
    invoke-virtual {v2, v7, v0, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1
    :try_start_5
    const-string v0, "initDatabase: throwing exception due to version mismatch"

    .line 1258
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1259
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Internal APNS file version doesn\'t match "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v10, v11

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v10, v11

    .line 1268
    :goto_4
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initDatabase: Exception while parsing \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1279
    invoke-virtual {v2, v7, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1282
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1283
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1284
    invoke-virtual {v2, v7, v0, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1287
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1288
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1289
    invoke-virtual {v2, v7, v0, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v10, :cond_3

    goto :goto_6

    :catchall_2
    move-exception v0

    .line 1279
    :goto_5
    invoke-virtual {v2, v7, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1282
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1283
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1284
    invoke-virtual {v2, v7, v5, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1287
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1288
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1289
    invoke-virtual {v2, v7, v4, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v10, :cond_2

    .line 1293
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1300
    :catch_4
    :cond_2
    invoke-direct {v1, v14}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getChecksum(Ljava/io/File;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->setApnConfChecksum(J)V

    .line 1301
    throw v0

    :catch_5
    move-object v10, v11

    .line 1279
    :catch_6
    invoke-virtual {v2, v7, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1282
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1283
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1284
    invoke-virtual {v2, v7, v0, v4, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1287
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1288
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1289
    invoke-virtual {v2, v7, v0, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v10, :cond_3

    .line 1293
    :goto_6
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1300
    :catch_7
    :cond_3
    invoke-direct {v1, v14}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getChecksum(Ljava/io/File;)J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->setApnConfChecksum(J)V

    const-string v0, "[TimeLap] loadApnsConfFile -"

    .line 1302
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1313
    :try_start_9
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1314
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1315
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v0, "[TimeLap] loadMPS +"

    .line 1318
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1319
    invoke-direct {v1, v2, v4, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadMPS(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;I)V

    const-string v0, "[TimeLap] loadMPS -"

    .line 1320
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception v0

    .line 1322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while parsing loadMPS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    .line 1326
    :goto_7
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$1300()V

    .line 1327
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$1400()V

    .line 1328
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$1500()V

    .line 1329
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$1600()V

    .line 1330
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$300()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v4, "EUR"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1331
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->saveOriginalTelephony(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1334
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getMpsChecksum()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->setMpsChecksum(J)V

    .line 1337
    iget-object v0, v1, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$1700(Lcom/android/providers/telephony/TelephonyProvider;)V

    .line 1340
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadPersistentApnData(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1342
    iget-object v0, v1, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v11, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 1346
    :cond_5
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1347
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.APN_LOADING_DONE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x1000020

    .line 1348
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "sendFotaUpdateIntent APN_LOADING_DONE"

    .line 1349
    invoke-static {v2}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    const-string v2, "com.sec.omadmspr"

    .line 1350
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1351
    iget-object v1, v1, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    return-void
.end method

.method private initDatabaseForMultiSim(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    const-string v12, "carriers"

    .line 1358
    invoke-static/range {p2 .. p2}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v13

    .line 1359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDatabaseForMultiSim. where="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    const/4 v14, 0x0

    :try_start_0
    const-string v3, "original"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    .line 1362
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1363
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDatabaseForMultiSim c.getCount() : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1365
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1366
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1367
    invoke-static {v0, v2}, Lcom/android/providers/telephony/TelephonyProvider;->access$1800(Landroid/content/ContentValues;Landroid/database/Cursor;)Ljava/lang/String;

    const/4 v3, 0x2

    .line 1368
    invoke-virtual {v10, v12, v14, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    .line 1370
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 1376
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object v2, v14

    .line 1373
    :goto_3
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteConstraintException Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_2

    .line 1381
    :cond_2
    :goto_4
    sget v0, Lcom/android/providers/telephony/TelephonyProvider;->mSimSlotNum:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    .line 1382
    invoke-static {v13}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1384
    instance-of v3, v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v3, :cond_3

    const-string v3, "Restore Multi Sim APN. Update current carrier."

    .line 1385
    invoke-static {v3}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->updateCurrentCarrierInProvider()Z

    .line 1391
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send SHOW_SELECT_APN_POPUP broadcast. subId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", slotId : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1392
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.android.intent.action.SHOW_SELECT_APN_POPUP"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v6, 0x1000020

    .line 1393
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1394
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "subId"

    .line 1395
    invoke-virtual {v7, v8, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v9, "slotId"

    .line 1396
    invoke-virtual {v7, v9, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1397
    invoke-virtual {v0, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1398
    iget-object v7, v1, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1401
    sget v0, Lcom/android/providers/telephony/TelephonyProvider;->mSimSlotNum:I

    if-le v0, v2, :cond_7

    const/4 v0, 0x0

    .line 1402
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->getSimNumeric(I)Ljava/lang/String;

    move-result-object v7

    .line 1403
    invoke-static {v2}, Lcom/android/providers/telephony/TelephonyProvider;->getSimNumeric(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v7, :cond_7

    if-eqz v11, :cond_7

    .line 1404
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1405
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1406
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "edited=1"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v12, v2, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1407
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initDatabaseForMultiSim SIM1 SIM2 are same. simNumeric1 = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " simNumeric2 = "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "delete UserApn Count : "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    if-nez v13, :cond_4

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    move v2, v0

    .line 1410
    :goto_5
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1411
    array-length v10, v7

    if-nez v10, :cond_5

    goto :goto_6

    .line 1414
    :cond_5
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {v10, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1416
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1417
    aget v0, v7, v0

    .line 1418
    invoke-virtual {v5, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1419
    invoke-virtual {v5, v9, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {v10, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1422
    iget-object v0, v1, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_7

    :cond_6
    :goto_6
    const-string v0, "initDatabaseForMultiSim otherSubId is null."

    .line 1412
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :cond_7
    :goto_7
    return-void

    :catchall_1
    move-exception v0

    move-object v14, v2

    :goto_8
    if-eqz v14, :cond_8

    .line 1376
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1378
    :cond_8
    throw v0
.end method

.method private insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 10

    const-string v0, "carriers"

    .line 3013
    invoke-static {p2}, Lcom/android/providers/telephony/TelephonyProvider;->setDefaultValue(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3015
    :try_start_0
    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3025
    :catch_0
    invoke-static {p1, v0, p2}, Lcom/android/providers/telephony/TelephonyProvider;->selectConflictingRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3028
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "edited"

    .line 3029
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    if-ne v3, v1, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v3, v1, :cond_1

    const/4 v3, 0x6

    .line 3041
    :cond_1
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const/4 v8, 0x0

    .line 3044
    iget-object v9, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v4, "carriers"

    move-object v3, p1

    move-object v5, v0

    move-object v6, p2

    invoke-static/range {v3 .. v9}, Lcom/android/providers/telephony/TelephonyProvider;->mergeFieldsAndUpdateDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/content/ContentValues;ZLandroid/content/Context;)V

    .line 3050
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return-void
.end method

.method private isSprintAPN(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    const-string p0, "pamsn"

    .line 3001
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ispsn"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "otasn"

    .line 3002
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "cinet.spcs"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "cdma"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSprintNumeric(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "310120"

    .line 3007
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "311870"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "311490"

    .line 3008
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "312530"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "310000"

    .line 3009
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    const-string v0, "mvno_type"

    const-string v1, "sub_id"

    if-eqz p2, :cond_8

    .line 2931
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2932
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2934
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    .line 2935
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    .line 2936
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    .line 2945
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SPR-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "numeric"

    if-eqz v6, :cond_1

    .line 2949
    :try_start_1
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "apn"

    .line 2950
    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_1

    const-string v9, "310000"

    .line 2951
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "31000"

    .line 2952
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-direct {p0, v8}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->isSprintAPN(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-nez v4, :cond_5

    .line 2963
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2964
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2967
    :cond_2
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2968
    sget-object v5, Lcom/android/providers/telephony/TelephonyProvider;->setNumeric:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2971
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->isSprintNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2972
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2973
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2975
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    goto :goto_2

    .line 2979
    :cond_4
    invoke-direct {p0, p1, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 2984
    :cond_5
    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2939
    :cond_6
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "Expected \'apn\' tag"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p0

    .line 2986
    :cond_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2994
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 2992
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got SQLException while loading apns."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p0

    .line 2990
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got IOException while loading apns."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception p0

    .line 2988
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got XmlPullParserException while loading apns."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 2994
    :goto_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2995
    throw p0

    :cond_8
    :goto_5
    return-void
.end method

.method private loadMPS(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    const-string v0, "loadMPS+"

    .line 3056
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 3057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadMPS+ simSlot : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 3060
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3061
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3062
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    .line 3063
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3067
    invoke-direct {p0, p1, p3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 3068
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 3065
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p3, "Expected \'apn\' tag"

    const/4 v0, 0x0

    invoke-direct {p0, p3, p2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p0

    .line 3070
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3078
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3076
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Got SQLException while loading apns."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 3074
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Got IOException while loading apns."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 3072
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Got XmlPullParserException while loading apns."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3078
    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3079
    throw p0

    :cond_2
    :goto_3
    const-string p0, "loadMPS-"

    .line 3081
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    return-void
.end method

.method private loadPersistentApnData(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9

    const-string v0, "IO Exception = "

    .line 3124
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs/apn-changes.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3125
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1

    .line 3126
    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "LRA"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 3129
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3130
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 3131
    invoke-interface {v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v6, "apns"

    .line 3132
    invoke-static {v5, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3133
    iget-object v6, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    invoke-static {v6, p1, v5}, Lcom/android/providers/telephony/TelephonyProvider;->access$2800(Lcom/android/providers/telephony/TelephonyProvider;Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3135
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, -0x1

    invoke-virtual {p0, p1, v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3143
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    .line 3145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 3138
    :goto_1
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while parsing \'"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3139
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3138
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    .line 3143
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p0

    .line 3145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_2
    if-eqz v2, :cond_0

    .line 3143
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 3145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    .line 3147
    :cond_0
    :goto_3
    throw p0

    .line 3150
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "loadPersistentApnData : ret="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    move v3, v4

    :cond_2
    :goto_4
    return v3
.end method

.method private mpsDbUpdateNeeded()Z
    .locals 5

    .line 1193
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getMpsChecksum()J

    move-result-wide v0

    .line 1194
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getMpsChecksumSp()J

    move-result-wide v2

    .line 1195
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mpsDbUpdateNeeded newChecksum: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1196
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mpsDbUpdateNeeded oldChecksum: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private pickSecondIfExists(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 1431
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v0, " instead of "

    const-string v1, "Load APNs from "

    if-eqz p0, :cond_0

    .line 1432
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1432
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    return-object p2

    .line 1436
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1436
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    return-object p1
.end method

.method private preserveUserAndCarrierApns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 2236
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/old-apns-conf.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2239
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2240
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 2241
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v3, "apns"

    .line 2242
    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2244
    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->deleteMatchingApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2259
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 2254
    :goto_0
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preserveUserAndCarrierApns: Exception while parsing \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2254
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 2259
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_3
    :goto_2
    :try_start_5
    const-string p0, "PRESERVEUSERANDCARRIERAPNS: etc/old-apns-conf.xml NOT FOUND. IT IS NEEDED TO UPGRADE FROM OLDER VERSIONS OF APN DB WHILE PRESERVING USER/CARRIER ADDED/EDITED ENTRIES."

    .line 2250
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    goto :goto_1

    :catch_4
    :cond_0
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_1

    .line 2259
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2264
    :catch_5
    :cond_1
    throw p0
.end method

.method private queryVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2302
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " and "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private queryVal2OrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2310
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " and ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=? or "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private queryValFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private queryValOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2306
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " and ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=? or "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private recreateDB(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;I)V
    .locals 8

    const-string v1, "carriers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 2214
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const-string v0, "DROP TABLE IF EXISTS carriers_tmp"

    .line 2221
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "carriers_tmp"

    .line 2223
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2225
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->copyDataToTmpTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;I)V

    .line 2226
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    const-string p0, "DROP TABLE IF EXISTS carriers"

    .line 2228
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE carriers_tmp rename to carriers;"

    .line 2230
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private recreateSimInfoDB(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 8

    const-string v1, "siminfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id ASC"

    move-object v0, p2

    .line 2107
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p3, "DROP TABLE IF EXISTS siminfo_tmp"

    .line 2109
    invoke-virtual {p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "siminfo_tmp"

    .line 2111
    invoke-direct {p0, p2, p3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createSimInfoTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2113
    invoke-direct {p0, p2, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->copySimInfoDataToTmpTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 2114
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const-string p0, "DROP TABLE IF EXISTS siminfo"

    .line 2116
    invoke-virtual {p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE siminfo_tmp rename to siminfo;"

    .line 2118
    invoke-virtual {p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private saveOriginalTelephony(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    const-string v0, "[TimeLap] saveOriginalTelephony +"

    .line 3085
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS original"

    .line 3087
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception saveOriginalTelephony DROP e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    :goto_0
    const-string v0, "original"

    .line 3091
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 3094
    :try_start_1
    invoke-virtual {p1, v0, p0, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveOriginalTelephony remove original data items for insert new items. Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    const-string v0, "INSERT INTO original SELECT * FROM carriers WHERE edited=0"

    .line 3096
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 3098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception saveOriginalTelephony insert e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    :goto_1
    :try_start_2
    const-string v2, "original"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 3102
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string p1, "dbh.onOpen: ok, queried table=original"

    .line 3103
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_0

    .line 3108
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    .line 3105
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception saveOriginalTelephony e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    :goto_3
    const-string p0, "[TimeLap] saveOriginalTelephony -"

    .line 3111
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    return-void

    :goto_4
    if-eqz p0, :cond_1

    .line 3108
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 3110
    :cond_1
    throw p1
.end method

.method private setApnConfChecksum(J)V
    .locals 2

    .line 1134
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v0, "telephonyprovider"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1135
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "apn_conf_checksum"

    .line 1136
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1137
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setMpsChecksum(J)V
    .locals 2

    .line 1167
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v0, "mps"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1168
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "apn_mps_checksum"

    .line 1169
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1170
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private toByteArray(Ljava/io/InputStream;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x80

    new-array p0, p0, [B

    .line 1121
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1122
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 1123
    invoke-virtual {v0, p0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1125
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 1010
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->startProcessLog()V

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dbh.onCreate:+ db="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    const-string v0, "siminfo"

    .line 1012
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createSimInfoTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "carriers"

    .line 1013
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$100(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "dbh.onCreate: Skipping apply APNs from xml."

    .line 1016
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "dbh.onCreate: Apply apns from xml."

    .line 1018
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1019
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1021
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dbh.onCreate:- db="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1022
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->stopProcessLog()V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    const-string v0, "no such table"

    :try_start_0
    const-string v2, "siminfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 1030
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    const-string v1, "dbh.onOpen: ok, queried table=siminfo"

    .line 1031
    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1033
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception siminfoe="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "siminfo"

    .line 1035
    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createSimInfoTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_1
    const-string v3, "carriers"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 1039
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    const-string v1, "dbh.onOpen: ok, queried table=carriers"

    .line 1040
    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1042
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception carriers e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "carriers"

    .line 1044
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1047
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$300()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_2
    const-string v2, "original"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    .line 1049
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    const-string v0, "dbh.onOpen: ok, queried table=original"

    .line 1050
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception original e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    const-string v0, "original"

    .line 1053
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v1, p2

    move/from16 v11, p3

    .line 1445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dbh.onUpgrade:+ db="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " oldV="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " newV="

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 1448
    iget-object v2, v0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    iget-object v3, v0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/providers/telephony/TelephonyProvider;->access$1900(Lcom/android/providers/telephony/TelephonyProvider;Landroid/content/Context;)V

    const v2, 0x50006

    if-ge v1, v2, :cond_0

    const-string v1, "ALTER TABLE carriers ADD COLUMN authtype INTEGER DEFAULT -1;"

    .line 1463
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v1, v2

    :cond_0
    const v2, 0x60006

    if-ge v1, v2, :cond_1

    const-string v1, "ALTER TABLE carriers ADD COLUMN protocol TEXT DEFAULT IP;"

    .line 1470
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE carriers ADD COLUMN roaming_protocol TEXT DEFAULT IP;"

    .line 1472
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v1, v2

    :cond_1
    const v2, 0x70006

    if-ge v1, v2, :cond_2

    const-string v1, "ALTER TABLE carriers ADD COLUMN carrier_enabled BOOLEAN DEFAULT 1;"

    .line 1478
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE carriers ADD COLUMN bearer INTEGER DEFAULT 0;"

    .line 1480
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v1, v2

    :cond_2
    const v2, 0x80006

    if-ge v1, v2, :cond_3

    const-string v1, "ALTER TABLE carriers ADD COLUMN mvno_type TEXT DEFAULT \'\';"

    .line 1487
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE carriers ADD COLUMN mvno_match_data TEXT DEFAULT \'\';"

    .line 1489
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v1, v2

    :cond_3
    const v2, 0x90006

    if-ge v1, v2, :cond_4

    const-string v1, "ALTER TABLE carriers ADD COLUMN sub_id INTEGER DEFAULT -1;"

    .line 1494
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v1, v2

    :cond_4
    const v2, 0xa0006

    if-ge v1, v2, :cond_5

    const-string v1, "ALTER TABLE carriers ADD COLUMN profile_id INTEGER DEFAULT 0;"

    .line 1500
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE carriers ADD COLUMN modem_cognitive BOOLEAN DEFAULT 0;"

    .line 1502
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE carriers ADD COLUMN max_conns INTEGER DEFAULT 20;"

    .line 1504
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE carriers ADD COLUMN wait_time INTEGER DEFAULT 0;"

    .line 1506
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE carriers ADD COLUMN max_conns_time INTEGER DEFAULT 300;"

    .line 1508
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v1, v2

    :cond_5
    const v2, 0xb0006

    if-ge v1, v2, :cond_6

    const-string v1, "ALTER TABLE carriers ADD COLUMN mtu INTEGER DEFAULT 0;"

    .line 1513
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v1, v2

    :cond_6
    const v2, 0xc0006

    const-string v14, "onUpgrade skipping siminfo upgrade.  The table will get created in onOpen."

    if-ge v1, v2, :cond_7

    :try_start_0
    const-string v1, "ALTER TABLE siminfo ADD COLUMN mcc INTEGER DEFAULT 0;"

    .line 1520
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN mnc INTEGER DEFAULT 0;"

    .line 1522
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1526
    :catch_0
    invoke-static {v14}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_0
    move v1, v2

    :cond_7
    const v2, 0xd0006

    if-ge v1, v2, :cond_8

    :try_start_1
    const-string v1, "ALTER TABLE siminfo ADD COLUMN carrier_name TEXT DEFAULT \'\';"

    .line 1535
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1539
    :catch_1
    invoke-static {v14}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_1
    move v1, v2

    :cond_8
    const v9, 0xf0006

    if-ge v1, v9, :cond_9

    .line 1578
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->preserveUserAndCarrierApns(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "carriers"

    move-object/from16 v1, p1

    .line 1580
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "carriers_tmp"

    .line 1587
    invoke-direct {v0, v10, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1589
    invoke-direct {v0, v10, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->copyPreservedApnsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 1590
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v1, "DROP TABLE IF EXISTS carriers"

    .line 1592
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE carriers_tmp rename to carriers;"

    .line 1594
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v1, v9

    :cond_9
    const v2, 0x100006

    if-ge v1, v2, :cond_a

    :try_start_2
    const-string v1, "ALTER TABLE siminfo ADD COLUMN enable_cmas_extreme_threat_alerts INTEGER DEFAULT 1;"

    .line 1618
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN enable_cmas_severe_threat_alerts INTEGER DEFAULT 1;"

    .line 1621
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN enable_cmas_amber_alerts INTEGER DEFAULT 1;"

    .line 1624
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN enable_emergency_alerts INTEGER DEFAULT 1;"

    .line 1626
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN alert_sound_duration INTEGER DEFAULT 4;"

    .line 1628
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN alert_reminder_interval INTEGER DEFAULT 0;"

    .line 1631
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN enable_alert_vibrate INTEGER DEFAULT 1;"

    .line 1634
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN enable_alert_speech INTEGER DEFAULT 1;"

    .line 1636
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN enable_etws_test_alerts INTEGER DEFAULT 0;"

    .line 1638
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN enable_channel_50_alerts INTEGER DEFAULT 1;"

    .line 1640
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN enable_cmas_test_alerts INTEGER DEFAULT 0;"

    .line 1642
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN show_cmas_opt_out_dialog INTEGER DEFAULT 1;"

    .line 1644
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1648
    :catch_2
    invoke-static {v14}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_2
    move v1, v2

    :cond_a
    const/4 v15, 0x0

    const v9, 0x110006

    if-ge v1, v9, :cond_f

    :try_start_3
    const-string v2, "carriers"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 1658
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, p1

    move/from16 v17, v9

    move-object/from16 v9, v16

    .line 1657
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_c

    :try_start_4
    const-string v2, "user_visible"

    .line 1659
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    goto :goto_3

    :cond_b
    const-string v2, "onUpgrade skipping carriers upgrade.  Column user_visible already exists."

    .line 1664
    invoke-static {v2}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    :goto_3
    const-string v2, "ALTER TABLE carriers ADD COLUMN user_visible BOOLEAN DEFAULT 1;"

    .line 1660
    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    if-eqz v1, :cond_d

    .line 1670
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d
    move/from16 v1, v17

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v15, v1

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v15, :cond_e

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1672
    :cond_e
    throw v0

    :cond_f
    :goto_6
    const v2, 0x120006

    if-ge v1, v2, :cond_10

    :try_start_5
    const-string v1, "ALTER TABLE siminfo ADD COLUMN sim_provisioning_status INTEGER DEFAULT 0;"

    .line 1678
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    .line 1683
    :catch_3
    invoke-static {v14}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_7
    move v1, v2

    :cond_10
    const v2, 0x140006

    const-string v9, "onUpgrade skipping siminfo upgrade. The table will get created in onOpen."

    if-ge v1, v2, :cond_11

    :try_start_6
    const-string v1, "ALTER TABLE siminfo ADD COLUMN is_embedded INTEGER DEFAULT 0;"

    .line 1697
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN access_rules BLOB;"

    .line 1699
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN is_removable INTEGER DEFAULT 0;"

    .line 1701
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 1705
    :catch_4
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_8
    move v1, v2

    :cond_11
    const v2, 0x150006

    const-string v16, "onUpgrade skipping carriers upgrade. The table will get created in onOpen."

    if-ge v1, v2, :cond_12

    :try_start_7
    const-string v1, "ALTER TABLE carriers ADD COLUMN user_editable INTEGER DEFAULT 1;"

    .line 1714
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    .line 1720
    :catch_5
    invoke-static/range {v16 .. v16}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_9
    move v1, v2

    :cond_12
    const v2, 0x160006

    if-ge v1, v2, :cond_13

    :try_start_8
    const-string v1, "ALTER TABLE siminfo ADD COLUMN volte_vt_enabled INTEGER DEFAULT -1;"

    .line 1729
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN vt_ims_enabled INTEGER DEFAULT -1;"

    .line 1732
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN wfc_ims_enabled INTEGER DEFAULT -1;"

    .line 1734
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN wfc_ims_mode INTEGER DEFAULT -1;"

    .line 1736
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN wfc_ims_roaming_mode INTEGER DEFAULT -1;"

    .line 1738
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN wfc_ims_roaming_enabled INTEGER DEFAULT -1;"

    .line 1740
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_a

    .line 1744
    :catch_6
    invoke-static/range {v16 .. v16}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_a
    const v1, 0x160006

    :cond_13
    const v2, 0x170006

    if-ge v1, v2, :cond_14

    :try_start_9
    const-string v1, "ALTER TABLE carriers ADD COLUMN owned_by INTEGER DEFAULT 1;"

    .line 1752
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_b

    .line 1756
    :catch_7
    invoke-static/range {v16 .. v16}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_b
    const v1, 0x170006

    :cond_14
    const v2, 0x180006

    const-string v8, "_id"

    if-ge v1, v2, :cond_15

    .line 1764
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    .line 1765
    invoke-direct {v0, v10, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->recreateDB(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;I)V

    const v1, 0x180006

    :cond_15
    const v2, 0x190006

    if-ge v1, v2, :cond_16

    .line 1785
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v1

    .line 1786
    invoke-direct {v0, v15, v10, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->recreateSimInfoDB(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    const v1, 0x190006

    :cond_16
    const v2, 0x1a0006

    if-ge v1, v2, :cond_17

    :try_start_a
    const-string v1, "ALTER TABLE carriers ADD COLUMN apn_set_id INTEGER DEFAULT 0;"

    .line 1804
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_c

    .line 1808
    :catch_8
    invoke-static/range {v16 .. v16}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_c
    const v1, 0x1a0006

    :cond_17
    const v2, 0x1b0006

    if-ge v1, v2, :cond_1b

    :try_start_b
    const-string v1, "ALTER TABLE siminfo ADD COLUMN mcc_string TEXT;"

    .line 1820
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE siminfo ADD COLUMN mnc_string TEXT;"

    .line 1822
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_d

    .line 1826
    :catch_9
    invoke-static {v14}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_d
    const-string v1, "mcc"

    const-string v2, "mnc"

    .line 1831
    filled-new-array {v8, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    const-string v2, "siminfo"

    move-object/from16 v1, p1

    move-object v15, v8

    move-object v8, v14

    .line 1833
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1834
    :goto_e
    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1835
    iget-object v2, v0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v10, v1}, Lcom/android/providers/telephony/TelephonyProvider;->fillInMccMncStringAtCursor(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_e

    :cond_18
    if-eqz v1, :cond_19

    .line 1837
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_19
    const v1, 0x1b0006

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_1a

    .line 1833
    :try_start_d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_f
    throw v2

    :cond_1b
    move-object v15, v8

    :goto_10
    const v2, 0x1c0006

    if-ge v1, v2, :cond_1c

    :try_start_e
    const-string v1, "ALTER TABLE siminfo ADD COLUMN is_opportunistic INTEGER DEFAULT 0;"

    .line 1844
    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_11

    .line 1848
    :catch_a
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_11
    const v1, 0x1c0006

    :cond_1c
    const v2, 0x1d0006

    if-ge v1, v2, :cond_1d

    .line 1860
    :try_start_f
    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1d

    .line 1861
    invoke-direct {v0, v10, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->recreateDB(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_12

    .line 1864
    :catch_b
    invoke-static/range {v16 .. v16}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_12
    const v1, 0x1d0006

    :cond_1d
    const v0, 0x1e0006

    if-ge v1, v0, :cond_1e

    :try_start_10
    const-string v0, "ALTER TABLE siminfo ADD COLUMN group_uuid TEXT;"

    .line 1874
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_c

    goto :goto_13

    .line 1878
    :catch_c
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_13
    const v1, 0x1e0006

    :cond_1e
    const v0, 0x1f0006

    if-ge v1, v0, :cond_1f

    :try_start_11
    const-string v0, "ALTER TABLE siminfo ADD COLUMN is_metered INTEGER DEFAULT 1;"

    .line 1888
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_14

    .line 1892
    :catch_d
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_14
    const v1, 0x1f0006

    :cond_1f
    const v0, 0x200006

    if-ge v1, v0, :cond_20

    :try_start_12
    const-string v0, "ALTER TABLE siminfo ADD COLUMN iso_country_code TEXT;"

    .line 1902
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_e

    goto :goto_15

    .line 1906
    :catch_e
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_15
    const v1, 0x200006

    :cond_20
    const v0, 0x210006

    if-ge v1, v0, :cond_21

    :try_start_13
    const-string v0, "ALTER TABLE siminfo ADD COLUMN carrier_id INTEGER DEFAULT -1;"

    .line 1916
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_f

    goto :goto_16

    .line 1920
    :catch_f
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_16
    const v1, 0x210006

    :cond_21
    const v0, 0x220006

    if-ge v1, v0, :cond_22

    :try_start_14
    const-string v0, "ALTER TABLE siminfo ADD COLUMN profile_class INTEGER DEFAULT -1;"

    .line 1930
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_10

    goto :goto_17

    .line 1935
    :catch_10
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_17
    const v1, 0x220006

    :cond_22
    const v0, 0x230006

    if-ge v1, v0, :cond_23

    :try_start_15
    const-string v0, "ALTER TABLE siminfo ADD COLUMN subscription_type INTEGER DEFAULT 0;"

    .line 1945
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_11

    goto :goto_18

    .line 1950
    :catch_11
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_18
    const v1, 0x230006

    :cond_23
    const v0, 0x240006

    if-ge v1, v0, :cond_24

    :try_start_16
    const-string v0, "ALTER TABLE carriers ADD COLUMN skip_464xlat INTEGER DEFAULT -1;"

    .line 1961
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_12

    goto :goto_19

    .line 1965
    :catch_12
    invoke-static/range {v16 .. v16}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_19
    const v1, 0x240006

    :cond_24
    const v0, 0x250006

    if-ge v1, v0, :cond_25

    :try_start_17
    const-string v0, "ALTER TABLE siminfo ADD COLUMN ehplmns TEXT;"

    .line 1976
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE siminfo ADD COLUMN hplmns TEXT;"

    .line 1978
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_13

    goto :goto_1a

    :catch_13
    const-string v0, "onUpgrade skipping siminfo upgrade for ehplmns. The table will get created in onOpen."

    .line 1982
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_1a
    const v1, 0x250006

    :cond_25
    const v0, 0x270006

    if-ge v1, v0, :cond_26

    :try_start_18
    const-string v0, "ALTER TABLE siminfo ADD COLUMN group_owner TEXT;"

    .line 1992
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_14

    goto :goto_1b

    .line 1996
    :catch_14
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_1b
    const v1, 0x270006

    :cond_26
    const v0, 0x280006

    if-ge v1, v0, :cond_27

    :try_start_19
    const-string v0, "ALTER TABLE siminfo ADD COLUMN data_enabled_override_rules TEXT;"

    .line 2006
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_15

    goto :goto_1c

    .line 2010
    :catch_15
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_1c
    const v1, 0x280006

    :cond_27
    const v0, 0x290006

    if-ge v1, v0, :cond_28

    :try_start_1a
    const-string v0, "ALTER TABLE siminfo ADD COLUMN imsi TEXT;"

    .line 2020
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_16

    goto :goto_1d

    .line 2024
    :catch_16
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_1d
    const v1, 0x290006

    :cond_28
    const v0, 0x2a0006

    if-ge v1, v0, :cond_29

    :try_start_1b
    const-string v0, "ALTER TABLE siminfo ADD COLUMN access_rules_from_carrier_configs BLOB;"

    .line 2034
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_17

    goto :goto_1e

    .line 2038
    :catch_17
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :cond_29
    :goto_1e
    const v0, 0x2b0006

    if-ge v1, v0, :cond_2a

    :try_start_1c
    const-string v0, "ALTER TABLE siminfo ADD COLUMN uicc_applications_enabled INTEGER DEFAULT 1;"

    .line 2047
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_18

    goto :goto_1f

    .line 2052
    :catch_18
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_1f
    const v1, 0x2b0006

    :cond_2a
    const v0, 0x2c0006

    if-ge v1, v0, :cond_2b

    :try_start_1d
    const-string v0, "ALTER TABLE siminfo ADD COLUMN allowed_network_types BIGINT DEFAULT -1;"

    .line 2062
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_19

    goto :goto_20

    .line 2067
    :catch_19
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_20
    const v1, 0x2c0006

    :cond_2b
    const v0, 0x2d0006

    if-ge v1, v0, :cond_2c

    :try_start_1e
    const-string v0, "ALTER TABLE siminfo ADD COLUMN ims_rcs_uce_enabled INTEGER DEFAULT 0;"

    .line 2077
    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_1a

    goto :goto_21

    .line 2082
    :catch_1a
    invoke-static {v9}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    :goto_21
    const v1, 0x2d0006

    .line 2090
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dbh.onUpgrade:- db="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    return-void
.end method
