.class public Lcom/android/providers/telephony/seccommon/MessageFeature;
.super Ljava/lang/Object;
.source "MessageFeature.java"


# static fields
.field public static final SEC_TP_ENABLE_CMCC_RCS:Z

.field public static final SEC_TP_ENABLE_CPM:Z

.field public static final SEC_TP_ENABLE_MIN_MATCH_NUMBER:Z

.field public static final SEC_TP_ENABLE_OMA13_NAME_ENCODING:Z

.field public static final SEC_TP_MESSAGE_CONFIG_OP_GROUPMSG:Ljava/lang/String;

.field public static final SEC_TP_MIN_MACTH_NUMBER:I

.field public static final SEC_TP_TRANSACTION_CUSTOMIZE_KOREA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_EnableMmsTransactionCustomize4Korea"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/seccommon/MessageFeature;->SEC_TP_TRANSACTION_CUSTOMIZE_KOREA:Z

    .line 20
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_ConfigMinMatchNumber"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/providers/telephony/seccommon/MessageFeature;->SEC_TP_MIN_MACTH_NUMBER:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 21
    :goto_0
    sput-boolean v0, Lcom/android/providers/telephony/seccommon/MessageFeature;->SEC_TP_ENABLE_MIN_MATCH_NUMBER:Z

    .line 33
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Message_EnableOMA13NameEncoding"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/seccommon/MessageFeature;->SEC_TP_ENABLE_OMA13_NAME_ENCODING:Z

    .line 35
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_ConfigOpGroupMsg"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/seccommon/MessageFeature;->SEC_TP_MESSAGE_CONFIG_OP_GROUPMSG:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_EnableMmsSubjectConcept4Korea"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    .line 48
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_EnableCpm"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/seccommon/MessageFeature;->SEC_TP_ENABLE_CPM:Z

    .line 49
    invoke-static {}, Lcom/android/providers/telephony/seccommon/MessageFeature;->getEnableCmccRcs()Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/telephony/seccommon/MessageFeature;->SEC_TP_ENABLE_CMCC_RCS:Z

    return-void
.end method

.method private static getEnableCmccRcs()Z
    .locals 1

    const-string v0, "ro.csc.sales_code"

    .line 52
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/android/providers/telephony/seccommon/MessageFeature;->isChnRcs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/providers/telephony/seccommon/MessageFeature;->SEC_TP_ENABLE_CPM:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getEnableNGMGroupMessage()Z
    .locals 2

    .line 42
    sget-object v0, Lcom/android/providers/telephony/seccommon/MessageFeature;->SEC_TP_MESSAGE_CONFIG_OP_GROUPMSG:Ljava/lang/String;

    const-string v1, "VZW"

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static varargs is(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 64
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 69
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static isChnRcs(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "CHM"

    .line 60
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/providers/telephony/seccommon/MessageFeature;->is(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CHC"

    const-string v1, "CHN"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/providers/telephony/seccommon/MessageFeature;->is(Ljava/lang/String;[Ljava/lang/String;)Z

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
