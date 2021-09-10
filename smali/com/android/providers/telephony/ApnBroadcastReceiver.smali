.class public Lcom/android/providers/telephony/ApnBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApnBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/ApnBroadcastReceiver$customFormatter;,
        Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;,
        Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;,
        Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;,
        Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;,
        Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;
    }
.end annotation


# static fields
.field private static final IMSI_NO_UPDATE_URI_USING_SLOTID:Landroid/net/Uri;

.field static LOG_DIR:Ljava/lang/String;

.field static LOG_PATH:Ljava/lang/String;

.field private static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final TELEPHONY_FOTA_UPDATE:Landroid/net/Uri;

.field public static final TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

.field private static final URL_PREFERRED_NO_UPDATE:Landroid/net/Uri;

.field static currentMccMnc:Ljava/lang/String;

.field static fh:Ljava/util/logging/FileHandler;

.field private static localRuntime:Ljava/lang/Runtime;

.field static logger:Ljava/util/logging/Logger;

.field private static mConfigNetworkTypeCapability:Ljava/lang/String;

.field private static mSimSlotNum:I


# instance fields
.field private DURING_FOTA:Ljava/lang/String;

.field enableSMF:Z

.field private mApnInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCidInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentImsis:[Ljava/lang/String;

.field private mCurrentNumerics:[Ljava/lang/String;

.field private mCurrentNwknames:[Ljava/lang/String;

.field private mFilteredApnInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFotaFlag:[Ljava/lang/String;

.field private mIsLoadProfileSIM:I

.field private mRJILSettings:Z

.field private mSubIds:[I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    sget v0, Lcom/android/providers/telephony/TelephonyProvider;->mSimSlotNum:I

    sput v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mSimSlotNum:I

    .line 125
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 140
    const-class v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 141
    sput-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->fh:Ljava/util/logging/FileHandler;

    const-string v0, "/data/user_de/0/com.android.providers.telephony/files/mobiledata_apn_receiver.dat"

    .line 143
    sput-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->LOG_PATH:Ljava/lang/String;

    const-string v0, "/data/log/err"

    .line 144
    sput-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->LOG_DIR:Ljava/lang/String;

    .line 146
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->localRuntime:Ljava/lang/Runtime;

    const-string v0, ""

    .line 155
    sput-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    const-string v0, "content://telephony/carriers/no_update"

    .line 178
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/fota_update"

    .line 179
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_FOTA_UPDATE:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn_no_update/subId/"

    .line 180
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn_no_update"

    .line 181
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->URL_PREFERRED_NO_UPDATE:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/imsi_no_update/slotId/"

    .line 183
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->IMSI_NO_UPDATE_URI_USING_SLOTID:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 93
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "mdc.sys.enable_smff"

    const/4 v1, 0x0

    .line 98
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->enableSMF:Z

    .line 102
    iput v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    .line 116
    sget v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mSimSlotNum:I

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentNumerics:[Ljava/lang/String;

    .line 117
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentNwknames:[Ljava/lang/String;

    .line 118
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentImsis:[Ljava/lang/String;

    .line 119
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mFotaFlag:[Ljava/lang/String;

    const-string v2, "1"

    .line 120
    iput-object v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->DURING_FOTA:Ljava/lang/String;

    .line 121
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mSubIds:[I

    .line 122
    new-array v0, v0, [I

    .line 130
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mRJILSettings:Z

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mFilteredApnInfos:Ljava/util/ArrayList;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCidInfos:Ljava/util/ArrayList;

    return-void
.end method

.method private FilterApnInfos(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "FilterApnInfos E"

    .line 1344
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1345
    iget v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-virtual {p0, v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getSPCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1346
    iget-object v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mFilteredApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1347
    iget-object v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;

    .line 1349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "CAN"

    .line 1350
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1351
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1352
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_match_data:Ljava/lang/String;

    const-string v3, "gid"

    .line 1353
    iput-object v3, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_type:Ljava/lang/String;

    .line 1355
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1356
    iget-object v3, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->nwkname:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->sim_slot:I

    if-ne v3, p3, :cond_0

    .line 1357
    iget-object v3, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mFilteredApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1360
    :cond_2
    iget-object v3, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->sim_slot:I

    if-ne v3, p3, :cond_0

    .line 1361
    iget-object v3, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mFilteredApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1365
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FilterApnInfosNum : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mFilteredApnInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->DURING_FOTA:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/providers/telephony/ApnBroadcastReceiver;I)Z
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->isSimChanged(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/providers/telephony/ApnBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->setProfileTestSim(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/providers/telephony/ApnBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->setProfile(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Z
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->isFirstNwChangedOnTss()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/providers/telephony/ApnBroadcastReceiver;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->clearPreferences(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/content/Context;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->sendShowSelectApnPopupIntent(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$300()I
    .locals 1

    .line 93
    sget v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mSimSlotNum:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[I
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mSubIds:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/providers/telephony/ApnBroadcastReceiver;I)I
    .locals 0

    .line 93
    iput p1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentNwknames:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentNumerics:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentImsis:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mFotaFlag:[Ljava/lang/String;

    return-object p0
.end method

.method static changePermission(Ljava/lang/String;)Z
    .locals 4

    .line 2683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changePermission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2684
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2685
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 2686
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "Make dir is failed"

    .line 2687
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    return v1

    .line 2691
    :cond_0
    :try_start_0
    sget-object p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->localRuntime:Ljava/lang/Runtime;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 770 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2693
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private changeUserApnId(Ljava/lang/String;II)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "current1"

    const-string v4, "current"

    const-string v5, "sim_slot"

    const-string v6, "_id"

    rsub-int/lit8 v7, v2, 0x1

    .line 2404
    invoke-static {v7}, Lcom/android/providers/telephony/TelephonyProvider;->getSimNumeric(I)Ljava/lang/String;

    move-result-object v8

    .line 2407
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2412
    :try_start_0
    iget-object v11, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "_id desc limit 1"

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v11, :cond_a

    .line 2415
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2416
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2419
    :try_start_2
    filled-new-array {v6, v4, v3, v5}, [Ljava/lang/String;

    move-result-object v15

    .line 2420
    iget-object v13, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v12

    const-string v12, "numeric=\'"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and edited="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " and sim_slot="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_7

    .line 2423
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_0

    .line 2424
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "changeUserApnId: User apn existed. Count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2425
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_7

    move/from16 v12, v19

    .line 2427
    :goto_0
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2428
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 2429
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2430
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v16, v11

    .line 2431
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v8

    const-string v8, "changeUserApnId : userId is "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    add-int/2addr v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", prevCurrent="

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", prevCurrent1="

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", prevSimSlot="

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2432
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2433
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v11, 0x1

    if-eq v14, v11, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-nez v2, :cond_2

    const-string v11, "changeUserApnId : need to update SIM_SLOT1(0)"

    .line 2436
    invoke-static {v11}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 2437
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v5, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v11, 0x1

    .line 2438
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const/4 v11, 0x1

    if-eq v15, v11, :cond_3

    if-ne v1, v11, :cond_4

    :cond_3
    if-ne v2, v11, :cond_4

    const-string v1, "changeUserApnId : need to update SIM_SLOT2(1)"

    .line 2443
    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2444
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2445
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2448
    :cond_4
    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v14, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v8, v11, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move/from16 v1, p3

    if-ne v13, v1, :cond_5

    const-string v8, "changeUserApnId : userApn is preferredApn."

    .line 2450
    invoke-static {v8}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    int-to-long v13, v12

    .line 2451
    invoke-direct {v0, v13, v14, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->setPreferredApn(JI)V

    .line 2453
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_6

    if-eqz v9, :cond_8

    const-wide/16 v1, -0x1

    .line 2455
    invoke-direct {v0, v1, v2, v7}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->setPreferredApn(JI)V

    move-object/from16 v8, v17

    .line 2456
    invoke-direct {v0, v8, v7}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->restoreUserPreferredApn(Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :cond_6
    move-object/from16 v11, v16

    move-object/from16 v8, v17

    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_4

    :catch_0
    move-object/from16 v16, v11

    goto :goto_3

    :cond_7
    move-object/from16 v16, v11

    :cond_8
    :goto_1
    if-eqz v10, :cond_b

    .line 2464
    :goto_2
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v11

    const/4 v15, 0x0

    move-object v10, v15

    goto :goto_4

    :catch_1
    move-object/from16 v16, v11

    const/4 v15, 0x0

    move-object v10, v15

    :catch_2
    :goto_3
    :try_start_6
    const-string v0, "Exception caught during get user APNs"

    .line 2461
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v10, :cond_b

    goto :goto_2

    :catchall_2
    move-exception v0

    :goto_4
    if-eqz v10, :cond_9

    .line 2464
    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2465
    :cond_9
    throw v0

    :catchall_3
    move-exception v0

    move-object/from16 v16, v11

    goto :goto_6

    :catch_3
    move-object/from16 v16, v11

    goto :goto_7

    :cond_a
    move-object/from16 v16, v11

    const-string v0, "lastApn is null"

    .line 2467
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_b
    :goto_5
    if-eqz v16, :cond_c

    .line 2473
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_9

    :catchall_4
    move-exception v0

    :goto_6
    move-object/from16 v10, v16

    goto :goto_a

    :catch_4
    :goto_7
    move-object/from16 v10, v16

    goto :goto_8

    :catchall_5
    move-exception v0

    const/4 v15, 0x0

    move-object v10, v15

    goto :goto_a

    :catch_5
    const/4 v15, 0x0

    move-object v10, v15

    :goto_8
    :try_start_8
    const-string v0, "Exception caught during get lastApn"

    .line 2470
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v10, :cond_c

    .line 2473
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_9
    return-void

    :catchall_6
    move-exception v0

    :goto_a
    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2474
    :cond_d
    throw v0
.end method

.method private clearPreferences(I)V
    .locals 3

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPreferences for slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v1, "simprof.preferences_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1209
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "simprof.key.nwkname"

    .line 1210
    invoke-virtual {p0, v2, p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "simprof.key.mccmnc"

    .line 1211
    invoke-virtual {p0, v2, p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "simprof.key.imsi"

    .line 1212
    invoke-virtual {p0, v2, p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "simprof.key.gid"

    .line 1213
    invoke-virtual {p0, v2, p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1214
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1216
    :cond_0
    iget-object v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentNwknames:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, p1

    .line 1217
    iget-object v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentNumerics:[Ljava/lang/String;

    aput-object v2, v1, p1

    .line 1218
    iget-object v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentImsis:[Ljava/lang/String;

    aput-object v2, v1, p1

    if-eqz v0, :cond_1

    .line 1221
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "simprof.key.last_imsi"

    .line 1222
    invoke-virtual {p0, v1, p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private static convertType([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1971
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-nez v1, :cond_0

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, ","

    .line 1975
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1977
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static convertTypes(Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;)[Ljava/lang/String;
    .locals 3

    .line 1911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1912
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableDefault:Z

    if-eqz v1, :cond_0

    const-string v1, "default"

    .line 1913
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1915
    :cond_0
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableDun:Z

    if-eqz v1, :cond_1

    const-string v1, "dun"

    .line 1916
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1918
    :cond_1
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableSUPL:Z

    if-eqz v1, :cond_2

    const-string v1, "supl"

    .line 1919
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1921
    :cond_2
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableHIPRI:Z

    if-eqz v1, :cond_3

    const-string v1, "hipri"

    .line 1922
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1924
    :cond_3
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableCbs:Z

    if-eqz v1, :cond_4

    const-string v1, "cbs"

    .line 1925
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    :cond_4
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableMms:Z

    if-eqz v1, :cond_5

    const-string v1, "mms"

    .line 1928
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1930
    :cond_5
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableFOTA:Z

    if-eqz v1, :cond_6

    const-string v1, "fota"

    .line 1931
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1933
    :cond_6
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableIms:Z

    if-eqz v1, :cond_7

    const-string v1, "ims"

    .line 1934
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1936
    :cond_7
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableXcap:Z

    if-eqz v1, :cond_8

    const-string v1, "xcap"

    .line 1937
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1939
    :cond_8
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableEmail:Z

    if-eqz v1, :cond_9

    const-string v1, "email"

    .line 1940
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1942
    :cond_9
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableIa:Z

    if-eqz v1, :cond_a

    const-string v1, "ia"

    .line 1943
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1945
    :cond_a
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableEmergencyIMSCall:Z

    if-eqz v1, :cond_b

    const-string v1, "Emergency"

    .line 1946
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1948
    :cond_b
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableMcx:Z

    if-eqz v1, :cond_c

    const-string v1, "mcx"

    .line 1949
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1951
    :cond_c
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableFoc:Z

    if-eqz v1, :cond_d

    const-string v1, "foc"

    .line 1952
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1954
    :cond_d
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableRcs:Z

    if-eqz v1, :cond_e

    const-string v1, "rcs"

    .line 1955
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1957
    :cond_e
    iget-boolean p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableBip:Z

    if-eqz p0, :cond_f

    const-string p0, "bip"

    .line 1958
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1960
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1962
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 1963
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1966
    :cond_10
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private createAllNetworkList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v10, "] [Numeric : "

    .line 878
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 879
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 880
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 881
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 882
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 890
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 892
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 896
    :goto_0
    iget v0, v8, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-virtual {v8, v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getSPCode(I)Ljava/lang/String;

    move-result-object v0

    .line 897
    iget v2, v8, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-direct {v8, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getSPCodeAsHex(I)Ljava/lang/String;

    move-result-object v15

    .line 899
    iget v2, v8, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-virtual {v8, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getSPName(I)Ljava/lang/String;

    move-result-object v7

    .line 900
    iget v2, v8, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-virtual {v8, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getIMSI(I)Ljava/lang/String;

    move-result-object v2

    .line 906
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v6, ""

    const/16 v16, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 907
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Imsi info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "simOperatorNumeric : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    return-object v16

    .line 912
    :cond_0
    sget-object v3, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "CAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 913
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v3, "45502"

    .line 914
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 917
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_3
    move-object v4, v6

    .line 920
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create Network List [SimNumeric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const-string v20, "sim_slot=?"

    new-array v2, v5, [Ljava/lang/String;

    .line 923
    iget v5, v8, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v14

    const/4 v14, 0x0

    aput-object v5, v2, v14

    .line 926
    :try_start_1
    iget-object v5, v8, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Lcom/android/providers/telephony/NwkInfoProvider;->URI_NWKINFO:Landroid/net/Uri;

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v21, v2

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_25

    :try_start_2
    const-string v1, "Check Subset & SP Code Including on DataBase"

    .line 930
    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 933
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v17, "255"

    const-string v2, "HEX"

    if-eqz v1, :cond_13

    move-object/from16 v18, v6

    move/from16 v19, v14

    move/from16 v20, v19

    move/from16 v21, v20

    :goto_3
    :try_start_3
    const-string v1, "nwkname"

    .line 935
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v14, "plmn"

    .line 936
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v25, v2

    const-string v2, "codetype"

    .line 939
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    const-string v2, "subsetcode"

    .line 941
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 940
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v27, v2

    const-string v2, "spcode"

    .line 942
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v28, v2

    const-string v2, "spname"

    .line 943
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 945
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v29, :cond_4

    :try_start_4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_4

    .line 946
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v29, :cond_4

    goto :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_17

    :catch_2
    move-exception v0

    goto/16 :goto_18

    .line 951
    :cond_4
    :try_start_5
    invoke-direct {v8, v1, v14}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->isProfileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v29, :cond_5

    :goto_4
    move-object/from16 v23, v5

    move-object/from16 v36, v7

    move-object/from16 v35, v11

    move-object/from16 v34, v12

    move-object/from16 v33, v13

    move-object/from16 v9, v25

    move-object v13, v3

    move-object v12, v4

    move-object v11, v6

    goto :goto_5

    :cond_5
    move-object/from16 v32, v1

    move-object/from16 v1, p0

    move-object/from16 v31, v2

    move-object/from16 v9, v25

    move-object/from16 v8, v26

    move-object/from16 v29, v27

    move-object/from16 v30, v28

    move-object/from16 v2, v32

    move-object/from16 v33, v13

    move-object v13, v3

    move-object v3, v14

    move-object/from16 v34, v12

    move-object v12, v4

    move-object/from16 v4, v29

    move-object/from16 v23, v5

    move-object/from16 v5, v30

    move-object/from16 v35, v11

    move-object v11, v6

    move-object v6, v0

    move-object/from16 v36, v7

    .line 956
    :try_start_6
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->filterOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_5
    move-object/from16 v1, v35

    move-object/from16 v3, v36

    goto/16 :goto_c

    .line 961
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query Profile [Network : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] [simSubsetcode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] [simSPCode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")] [simSPName : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v36

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 965
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 966
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 967
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 969
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v12, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v29

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v4, v29

    :cond_8
    move/from16 v5, v19

    .line 975
    :goto_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 976
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 977
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v1

    .line 978
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 979
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v1, :cond_9

    const/4 v6, 0x0

    .line 980
    invoke-virtual {v15, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    :cond_9
    :goto_7
    move-object/from16 v6, v18

    goto :goto_8

    .line 983
    :cond_a
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object/from16 v18, v17

    goto :goto_7

    :cond_b
    move-object/from16 v18, v0

    goto :goto_7

    .line 985
    :goto_8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v1, v7, :cond_c

    move-object/from16 v1, v30

    .line 986
    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    move-object/from16 v18, v6

    const/16 v20, 0x1

    goto :goto_9

    :cond_c
    move-object/from16 v1, v30

    :cond_d
    move-object/from16 v18, v6

    goto :goto_9

    :cond_e
    move-object/from16 v1, v30

    .line 991
    :goto_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 992
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    move-object/from16 v6, v31

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/16 v21, 0x1

    goto :goto_a

    :cond_f
    move-object/from16 v6, v31

    .line 996
    :cond_10
    :goto_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 997
    new-instance v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;

    move-object/from16 v25, v7

    move-object/from16 v26, v2

    move-object/from16 v27, v14

    move-object/from16 v28, v8

    move-object/from16 v29, v4

    move-object/from16 v30, v1

    move-object/from16 v31, v6

    invoke-direct/range {v25 .. v31}, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v35

    .line 999
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add Profile [Network : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_b

    :cond_11
    move-object/from16 v1, v35

    :goto_b
    move/from16 v19, v5

    .line 1003
    :goto_c
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v6, v18

    move/from16 v4, v19

    goto :goto_d

    :cond_12
    move-object/from16 v8, p0

    move-object v7, v3

    move-object v2, v9

    move-object v6, v11

    move-object v4, v12

    move-object v3, v13

    move-object/from16 v5, v23

    move-object/from16 v13, v33

    move-object/from16 v12, v34

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move-object v11, v1

    goto/16 :goto_3

    :cond_13
    move-object v9, v2

    move-object/from16 v23, v5

    move-object v3, v7

    move-object v1, v11

    move-object/from16 v34, v12

    move-object/from16 v33, v13

    move-object v12, v4

    move-object v11, v6

    const/4 v4, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1006
    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;

    if-eqz v4, :cond_15

    .line 1008
    iget-object v5, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->subsetcode:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 1009
    iget-object v5, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->subsetcode:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->subsetcode:Ljava/lang/String;

    .line 1010
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    .line 1009
    invoke-virtual {v12, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v5, v34

    .line 1011
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_14
    move-object/from16 v5, v34

    goto :goto_f

    :cond_15
    move-object/from16 v5, v34

    .line 1015
    iget-object v7, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->subsetcode:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1016
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_f
    move-object/from16 v34, v5

    goto :goto_e

    :cond_17
    move-object/from16 v5, v34

    .line 1022
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;

    if-eqz v20, :cond_1d

    .line 1024
    iget-object v4, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->spcode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 1025
    iget-object v4, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->spcode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 1026
    iget-object v5, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->codetype:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1027
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v4, :cond_18

    const/4 v5, 0x0

    .line 1028
    invoke-virtual {v15, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_11

    :cond_18
    const/4 v5, 0x0

    goto :goto_11

    :cond_19
    const/4 v5, 0x0

    .line 1031
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move-object/from16 v6, v17

    goto :goto_11

    :cond_1a
    move-object v6, v0

    .line 1033
    :goto_11
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v4, v7, :cond_1b

    .line 1034
    iget-object v4, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->spcode:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object/from16 v4, v33

    .line 1035
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1b
    move-object/from16 v4, v33

    goto :goto_12

    :cond_1c
    move-object/from16 v4, v33

    const/4 v5, 0x0

    goto :goto_12

    :cond_1d
    move-object/from16 v4, v33

    const/4 v5, 0x0

    .line 1040
    iget-object v7, v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->spcode:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 1041
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_12
    move-object/from16 v33, v4

    goto :goto_10

    :cond_1f
    move-object/from16 v4, v33

    .line 1046
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_24

    .line 1048
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;

    if-eqz v21, :cond_21

    .line 1050
    iget-object v2, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->spname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1051
    iget-object v2, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->spname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v2, v24

    .line 1052
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_20
    move-object/from16 v2, v24

    goto :goto_14

    :cond_21
    move-object/from16 v2, v24

    .line 1056
    iget-object v4, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->spname:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1057
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_22
    :goto_14
    move-object/from16 v24, v2

    goto :goto_13

    :cond_23
    move-object/from16 v2, v24

    move-object v1, v2

    goto :goto_16

    :cond_24
    move-object v1, v4

    goto :goto_16

    :catchall_0
    move-exception v0

    goto :goto_15

    :catch_3
    move-exception v0

    move-object/from16 v5, v23

    goto/16 :goto_17

    :catch_4
    move-exception v0

    move-object/from16 v5, v23

    goto/16 :goto_18

    :catchall_1
    move-exception v0

    move-object/from16 v23, v5

    :goto_15
    move-object/from16 v16, v23

    goto/16 :goto_19

    :catch_5
    move-exception v0

    move-object/from16 v23, v5

    goto :goto_17

    :catch_6
    move-exception v0

    move-object/from16 v23, v5

    goto/16 :goto_18

    :cond_25
    move-object/from16 v23, v5

    move-object v3, v7

    :goto_16
    if-eqz v23, :cond_26

    .line 1075
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_26
    const-string v0, "Yes 4G"

    .line 1078
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "52505"

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "createAllNetworkList(): Add StarHub to networkList in case Yes4G Dual IMSI switching"

    .line 1079
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1080
    new-instance v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "StarHub (Postpaid)"

    const-string v4, "52505"

    const-string v8, "StarHub"

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    new-instance v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v10, "StarHub (Prepaid)"

    const-string v11, "52505"

    const-string v15, "StarHub"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    return-object v1

    :catchall_2
    move-exception v0

    goto :goto_19

    :catch_7
    move-exception v0

    move-object/from16 v5, v16

    .line 1071
    :goto_17
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StringIndexOutOfBoundsException occurred in createAllNetworkList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v5, :cond_28

    .line 1075
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_28
    return-object v16

    :catch_8
    move-exception v0

    move-object/from16 v5, v16

    .line 1068
    :goto_18
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught during nwkinfo query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v5, :cond_29

    .line 1075
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_29
    return-object v16

    :catchall_3
    move-exception v0

    move-object/from16 v16, v5

    :goto_19
    if-eqz v16, :cond_2a

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1076
    :cond_2a
    throw v0
.end method

.method private extractNumericFromImpi(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "ApnBroadcastReceiver"

    if-nez p1, :cond_0

    const-string p1, "IMPI is null"

    .line 2765
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "\\d+@ims\\.mnc\\d+\\.mcc\\d+\\.3gppnetwork\\.org"

    .line 2769
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2770
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2772
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "IMPI is empty"

    .line 2773
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 2776
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "mcc"

    .line 2778
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x3

    const-string v0, "."

    .line 2779
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 2780
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "mnc"

    .line 2782
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    .line 2783
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 2784
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    const-string v0, "@"

    .line 2789
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    .line 2791
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    .line 2793
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private filterOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "21407"

    .line 1168
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "10"

    .line 1173
    invoke-virtual {p0, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "01"

    invoke-virtual {p0, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "1"

    .line 1174
    invoke-virtual {p0, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "16"

    invoke-virtual {p0, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const-string p0, "Jazztel"

    .line 1175
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Remove Jazztel network due to movistar SIM card"

    .line 1176
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getPreferredUserApn(I)I
    .locals 14

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 2705
    :try_start_0
    sget v2, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mSimSlotNum:I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const-string v4, "edited"

    const-string v5, "apn"

    const-string v6, "name"

    const-string v7, "_id"

    if-le v2, v3, :cond_2

    .line 2706
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferredUserApn: multi sim case (slotID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2707
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2708
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_0

    .line 2712
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferredUserApn: subId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v8, p1, v3

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2714
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/providers/telephony/ApnBroadcastReceiver;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    filled-new-array {v7, v6, v5, v4}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "name ASC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "getPreferredUserApn: subId is null"

    .line 2709
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    return v0

    .line 2717
    :cond_2
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/providers/telephony/ApnBroadcastReceiver;->URL_PREFERRED_NO_UPDATE:Landroid/net/Uri;

    filled-new-array {v7, v6, v5, v4}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "name ASC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_1
    move-object v1, p0

    if-eqz v1, :cond_3

    .line 2720
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_3

    .line 2721
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2722
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 2723
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2724
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2725
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2726
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreferredUserApn: checkPreferredUserApn : pos= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", apn="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", edited="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    .line 2727
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2728
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreferredUserApn found! pos="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, p0

    :cond_3
    if-eqz v1, :cond_4

    .line 2736
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 2733
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught during query(getPreferredUserApn): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    return v0

    :goto_4
    if-eqz v1, :cond_5

    .line 2736
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2738
    :cond_5
    throw p0
.end method

.method private getRow(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "mvno_type"

    const-string v3, "mvno_match_data"

    .line 1430
    new-instance v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;

    invoke-direct {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;-><init>()V

    const/4 v5, 0x0

    const-string v6, "name"

    .line 1431
    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->name:Ljava/lang/String;

    const-string v8, ""

    if-nez v7, :cond_0

    .line 1432
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->name:Ljava/lang/String;

    :cond_0
    const-string v7, "apn"

    .line 1433
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->apn:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 1434
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->apn:Ljava/lang/String;

    :cond_1
    const-string v7, "proxy"

    .line 1435
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->proxy:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 1436
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->proxy:Ljava/lang/String;

    :cond_2
    const-string v7, "port"

    .line 1437
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->port:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 1438
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->port:Ljava/lang/String;

    :cond_3
    const-string v7, "mmsproxy"

    .line 1439
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mmsproxy:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 1440
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mmsproxy:Ljava/lang/String;

    :cond_4
    const-string v7, "mmsport"

    .line 1441
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mmsport:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 1442
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mmsport:Ljava/lang/String;

    :cond_5
    const-string v7, "user"

    .line 1443
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->user:Ljava/lang/String;

    if-nez v7, :cond_6

    .line 1444
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->user:Ljava/lang/String;

    :cond_6
    const-string v7, "password"

    .line 1445
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->password:Ljava/lang/String;

    if-nez v7, :cond_7

    .line 1446
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->password:Ljava/lang/String;

    :cond_7
    const-string v7, "mmsc"

    .line 1447
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mmsc:Ljava/lang/String;

    if-nez v7, :cond_8

    .line 1448
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mmsc:Ljava/lang/String;

    :cond_8
    const-string v7, "mcc"

    .line 1449
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mcc:Ljava/lang/String;

    if-nez v7, :cond_9

    .line 1450
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mcc:Ljava/lang/String;

    :cond_9
    const-string v7, "mnc"

    .line 1451
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mnc:Ljava/lang/String;

    if-nez v7, :cond_a

    .line 1452
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mnc:Ljava/lang/String;

    :cond_a
    const-string v7, "numeric"

    .line 1453
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    if-nez v7, :cond_b

    .line 1454
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    :cond_b
    const-string v7, "authtype"

    .line 1455
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 1456
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->authtype:I

    :cond_c
    const-string v7, "protocol"

    .line 1457
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->protocol:Ljava/lang/String;

    const-string v9, "IP"

    if-nez v7, :cond_d

    .line 1458
    iput-object v9, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->protocol:Ljava/lang/String;

    :cond_d
    const-string v7, "roaming_protocol"

    .line 1459
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->roaming_protocol:Ljava/lang/String;

    if-nez v7, :cond_e

    .line 1460
    iput-object v9, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->roaming_protocol:Ljava/lang/String;

    :cond_e
    const-string v7, "type"

    .line 1461
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->type:Ljava/lang/String;

    if-nez v7, :cond_f

    .line 1462
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->type:Ljava/lang/String;

    :cond_f
    const-string v7, "carrier_enabled"

    .line 1463
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 1464
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->carrier_enabled:I

    :cond_10
    const-string v7, "bearer"

    .line 1465
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 1466
    invoke-static {v7}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->bearer_bitmask:I

    :cond_11
    const-string v7, "bearer_bitmask"

    .line 1467
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 1468
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->bearer_bitmask:I

    :cond_12
    const-string v7, "profile_id"

    .line 1469
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 1470
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->profile_id:I

    :cond_13
    const-string v7, "modem_cognitive"

    .line 1471
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->modem_cognitive:Ljava/lang/String;

    if-nez v7, :cond_14

    .line 1472
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->modem_cognitive:Ljava/lang/String;

    :cond_14
    const-string v7, "server"

    .line 1473
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->server:Ljava/lang/String;

    if-nez v7, :cond_15

    .line 1474
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->server:Ljava/lang/String;

    :cond_15
    const-string v7, "nwkname"

    .line 1475
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->nwkname:Ljava/lang/String;

    if-nez v7, :cond_16

    .line 1476
    iput-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->nwkname:Ljava/lang/String;

    :cond_16
    const-string v7, "editable"

    .line 1477
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_17

    .line 1478
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->user_editable:I

    :cond_17
    const-string v7, "HiddenStatus"

    .line 1479
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v7, :cond_18

    const-string v10, "hidden"

    .line 1480
    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    iput v9, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->user_visible:I

    :cond_18
    const-string v7, "mtu"

    .line 1481
    invoke-interface {v0, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    .line 1483
    iput v9, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mtu:I

    goto :goto_0

    .line 1485
    :cond_19
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mtu:I

    .line 1490
    :goto_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(plmn = \'"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' AND nwkname = \'"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->nwkname:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\')"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-array v15, v9, [Ljava/lang/String;

    .line 1493
    iget-object v0, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/android/providers/telephony/NwkInfoProvider;->URI_NWKINFO:Landroid/net/Uri;

    const/4 v13, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_28

    .line 1497
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "Check Subset & SP Code Including on DataBase"

    .line 1498
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    :goto_1
    const-string v0, "codetype"

    .line 1501
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v11, "subsetcode"

    .line 1503
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1502
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "spcode"

    .line 1504
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "spname"

    .line 1505
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1507
    iget v14, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-virtual {v1, v14}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getSPName(I)Ljava/lang/String;

    move-result-object v14

    .line 1508
    iget v15, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-direct {v1, v15}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getSPCodeAsHex(I)Ljava/lang/String;

    move-result-object v15

    .line 1510
    iget v5, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-virtual {v1, v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getIMSI(I)Ljava/lang/String;

    move-result-object v5

    .line 1511
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v9, "CAN"

    const-string v7, "45502"

    if-nez v17, :cond_1d

    move-object/from16 v17, v8

    :try_start_2
    iget-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 1512
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v18, v6

    :try_start_3
    iget-object v6, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v8, v6, :cond_1e

    .line 1513
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Imsi info : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "apnInfo.numeric : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1514
    sget-object v6, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v6, :cond_1a

    sget-object v6, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mConfigNetworkTypeCapability:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1515
    iget-object v6, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1516
    :cond_1a
    iget-object v6, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_3

    .line 1519
    :cond_1b
    iget-object v6, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_1c
    move-object/from16 v18, v6

    goto :goto_2

    :cond_1d
    move-object/from16 v18, v6

    move-object/from16 v17, v8

    :cond_1e
    :goto_2
    move-object/from16 v5, v17

    .line 1523
    :goto_3
    iget-object v6, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->nwkname:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_26

    iget-object v6, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_26

    .line 1524
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRow - spname (spn) exist. value = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const-string v0, "spn"

    .line 1526
    iput-object v0, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_type:Ljava/lang/String;

    .line 1527
    iput-object v13, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_match_data:Ljava/lang/String;

    goto/16 :goto_6

    .line 1529
    :cond_1f
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_22

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 1530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRow - spcode (gid) exist. value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const-string v5, "HEX"

    .line 1533
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1534
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {v15, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1537
    :cond_20
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1538
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1539
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_21

    .line 1540
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_21
    move-object v12, v0

    .line 1542
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {v15, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1544
    :goto_4
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_26

    .line 1545
    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "gid"

    .line 1546
    iput-object v0, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_type:Ljava/lang/String;

    .line 1547
    iput-object v12, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_match_data:Ljava/lang/String;

    goto/16 :goto_6

    .line 1550
    :cond_22
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1551
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRow - subsetcode(imsi) exist. value = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const-string v0, "imsi"

    .line 1553
    iput-object v0, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_type:Ljava/lang/String;

    .line 1554
    iget-object v0, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_25

    .line 1555
    sget-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mConfigNetworkTypeCapability:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 1557
    :cond_23
    iget-object v0, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "mvno_match_data is subsetcode only for 45502"

    .line 1558
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 1560
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1562
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mvno_match_data: = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1564
    :cond_25
    iput-object v11, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_match_data:Ljava/lang/String;

    goto :goto_6

    .line 1568
    :cond_26
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1569
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apnInfo.mvno_type: = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_type:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", apnInfo.mvno_match_data: = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_match_data:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :cond_27
    move-object/from16 v8, v17

    move-object/from16 v6, v18

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v18, v6

    goto :goto_8

    :cond_28
    move-object/from16 v18, v6

    :goto_7
    if-eqz v10, :cond_29

    goto :goto_9

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_f

    :catch_2
    move-exception v0

    move-object/from16 v18, v6

    const/4 v10, 0x0

    .line 1573
    :goto_8
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught during query: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v10, :cond_29

    .line 1576
    :goto_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1578
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRow : apn :"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->apn:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", numeric : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", nwkname : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->nwkname:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1579
    iget-object v0, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    .line 1582
    iget-object v5, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v0, v6

    const-string v5, "numeric = \'%s\' AND edited=1"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1583
    iget-object v0, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 1586
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2c

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User apn existed. Count = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1588
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1590
    :goto_a
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1591
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1593
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_match_data:Ljava/lang/String;

    .line 1594
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1595
    iget-object v0, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_match_data:Ljava/lang/String;

    .line 1596
    iget-object v6, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_type:Ljava/lang/String;

    .line 1597
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update user apn MVNO = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const-string v7, "_id"

    .line 1598
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1599
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1600
    invoke-virtual {v8, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v8, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    iget-object v0, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v6, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v0, v6, v8, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v6, v18

    .line 1603
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1604
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update user apn id = _id + = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and profile name = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_b

    :cond_2a
    move-object/from16 v6, v18

    const/4 v10, 0x0

    .line 1606
    :goto_b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_d

    :cond_2b
    move-object/from16 v18, v6

    goto/16 :goto_a

    .line 1609
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User apn is not existed. Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    .line 1613
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User APN MVNO attached: exception caught : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v5, :cond_2f

    goto :goto_e

    :goto_c
    if-eqz v5, :cond_2d

    .line 1616
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1617
    :cond_2d
    throw v0

    :cond_2e
    :goto_d
    if-eqz v5, :cond_2f

    .line 1616
    :goto_e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2f
    return-void

    :catchall_2
    move-exception v0

    move-object v5, v10

    :goto_f
    if-eqz v5, :cond_30

    .line 1576
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1577
    :cond_30
    throw v0
.end method

.method private getSPCodeAsHex(I)Ljava/lang/String;
    .locals 1

    .line 1104
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1105
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1110
    :cond_0
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    .line 1112
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get spcode as hex : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "getSPCodeAsHex: subId is null"

    .line 1106
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private insertApnInfoToDb(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 4

    const-string p1, "insertApnInfoToDb"

    .line 2365
    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2366
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    .line 2367
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;

    .line 2368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ai.numeric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ai.nwkname : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->nwkname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2369
    iput v2, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->edited:I

    .line 2370
    iput p3, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->sim_slot:I

    .line 2371
    aget v2, p1, v2

    iput v2, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->sub_id:I

    .line 2372
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->writeToTelephonyDb(Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;)V

    goto :goto_0

    .line 2374
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->changeUserApnId(Ljava/lang/String;II)V

    const/4 p0, 0x1

    return p0
.end method

.method private insertApnInfoToDb(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I
    .locals 7

    const-string p1, "insertApnInfoToDb"

    .line 2380
    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2381
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 2382
    invoke-virtual {p5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2383
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p5, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2384
    iget-object v3, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;

    .line 2385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ai.numeric : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", ai.nwkname : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->nwkname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2386
    iput v0, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->edited:I

    .line 2387
    iput p3, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->sim_slot:I

    .line 2388
    aget v5, p1, v0

    iput v5, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->sub_id:I

    .line 2389
    iput-object p5, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    .line 2390
    iput-object v2, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mcc:Ljava/lang/String;

    .line 2391
    iput-object v1, v4, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mnc:Ljava/lang/String;

    .line 2393
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->writeToTelephonyDb(Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;)V

    goto :goto_0

    .line 2395
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->changeUserApnId(Ljava/lang/String;II)V

    const/4 p0, 0x1

    return p0
.end method

.method private insertCidInfoToDb(Ljava/lang/String;II)I
    .locals 9

    const-string v0, "insertCidInfoToDb"

    .line 2340
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2341
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    const-string v1, "ro.build.characteristics"

    .line 2342
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2345
    iget-object v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCidInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;

    .line 2346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ai.numeric : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", ai.nwkname : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->nwkname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", at.device_class : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->device_class:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 2347
    iput v5, v3, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->edited:I

    .line 2348
    iput p2, v3, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->sim_slot:I

    .line 2349
    aget v6, v0, v5

    iput v6, v3, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->sub_id:I

    .line 2351
    iget-object v6, v3, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->device_class:Ljava/lang/String;

    const-string v7, "tablet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    move v6, v5

    .line 2352
    :goto_1
    iget-object v7, v3, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->device_class:Ljava/lang/String;

    const-string v8, "mits"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "phone"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    .line 2354
    :goto_2
    iget-object v5, v3, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->device_class:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    if-nez v6, :cond_2

    if-nez v4, :cond_2

    goto :goto_0

    .line 2357
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->writeToTelephonyDb(Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;)V

    goto :goto_0

    .line 2360
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->changeUserApnId(Ljava/lang/String;II)V

    return v4
.end method

.method private isFirstNwChangedOnTss()Z
    .locals 6

    const-string v0, "mdc.singlesku.activated"

    const/4 v1, 0x0

    .line 860
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 862
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v2, "simprof.preferences_name"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "simprof.key.tss_activated_flag"

    .line 864
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 865
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", currentStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 867
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 868
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 869
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private isNeedToMerge(Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;)Z
    .locals 1

    .line 1754
    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->apn:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->apn:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->apn:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->nwkname:Ljava/lang/String;

    .line 1755
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->nwkname:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->nwkname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->numeric:Ljava/lang/String;

    .line 1756
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->numeric:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->numeric:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->protocol:Ljava/lang/String;

    .line 1757
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->protocol:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->roaming_protocol:Ljava/lang/String;

    .line 1758
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->roaming_protocol:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->roaming_protocol:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->profile_id:I

    iget v0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->profile_id:I

    if-ne p0, v0, :cond_6

    iget p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->modem_cognitive:I

    iget v0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->modem_cognitive:I

    if-ne p0, v0, :cond_6

    iget p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user_visible:I

    iget v0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user_visible:I

    if-ne p0, v0, :cond_6

    iget p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->authtype:I

    iget v0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->authtype:I

    if-ne p0, v0, :cond_6

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user:Ljava/lang/String;

    .line 1764
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user:Ljava/lang/String;

    .line 1765
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_1
    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->password:Ljava/lang/String;

    .line 1766
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->password:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->password:Ljava/lang/String;

    .line 1767
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->password:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->password:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_3
    iget-object p0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mvno_type:Ljava/lang/String;

    .line 1768
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mvno_type:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mvno_match_data:Ljava/lang/String;

    .line 1769
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mvno_match_data:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mvno_match_data:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mvno_match_data:Ljava/lang/String;

    .line 1770
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->device_class:Ljava/lang/String;

    .line 1771
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    iget-object p0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->device_class:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->device_class:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private isProfileExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "numeric=?"

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    aput-object p2, v5, v0

    const/4 p2, 0x0

    .line 1145
    :try_start_0
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1149
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_1

    move v0, p1

    :cond_1
    if-eqz p2, :cond_2

    .line 1159
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1155
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception caught during query: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 1159
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0

    :goto_0
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1160
    :cond_4
    throw p0

    :cond_5
    :goto_1
    const-string p0, "NetworkName or Numeric is empty"

    .line 1137
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    return v0
.end method

.method private isRJILSim(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "405874"

    .line 2743
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405840"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405854"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405855"

    .line 2744
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405856"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405857"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405858"

    .line 2745
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405859"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405860"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405861"

    .line 2746
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405862"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405863"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405864"

    .line 2747
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405865"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405866"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405867"

    .line 2748
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405868"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405869"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405870"

    .line 2749
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405871"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405872"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405873"

    .line 2750
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "40587"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "405780"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "40578"

    .line 2751
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "406977"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "406978"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "406981"

    .line 2752
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "406994"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "406999"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string p0, "ApnBroadcastReceiver"

    const-string p1, "SIM  is RJIL Operator"

    .line 2753
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private isSimChanged(I)Z
    .locals 3

    .line 1261
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getIMSI(I)Ljava/lang/String;

    move-result-object v0

    .line 1262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimChanged imsi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1265
    iget-object v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentImsis:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1266
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentImsis:[Ljava/lang/String;

    aput-object v0, p0, p1

    return v2

    .line 1271
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentImsis:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1272
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentImsis:[Ljava/lang/String;

    aput-object v0, p0, p1

    return v2

    :cond_1
    const-string p0, "isSimChanged : false"

    .line 1275
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 4

    .line 163
    :try_start_0
    sget-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "D/ApnBroadcastReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 4

    .line 171
    :try_start_0
    sget-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E/ApnBroadcastReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static markCarrierTypes(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;
    .locals 3

    .line 1797
    new-instance v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;-><init>(Lcom/android/providers/telephony/ApnBroadcastReceiver$1;)V

    .line 1798
    new-instance v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;

    invoke-direct {v2, v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;-><init>(Lcom/android/providers/telephony/ApnBroadcastReceiver$1;)V

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ","

    .line 1803
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1804
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1806
    invoke-static {v0, p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->setTypeForProfile(Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;[Ljava/lang/String;)V

    .line 1807
    invoke-static {v2, p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->setTypeForProfile(Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;[Ljava/lang/String;)V

    .line 1808
    invoke-static {v2, v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mergeTypeForProfiles(Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;)V

    :cond_1
    :goto_0
    return-object v2
.end method

.method private mergeCidInfo(Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;)Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;
    .locals 3

    .line 1731
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCidInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;

    .line 1732
    invoke-direct {p0, v1, p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->isNeedToMerge(Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1733
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCidInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1735
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "before cidinfo type : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApnBroadcastReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-object p0, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->type:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 1739
    iget-object p1, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->type:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->markCarrierTypes(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->convertTypes(Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->convertType([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->type:Ljava/lang/String;

    .line 1742
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "after cidinfo type : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->type:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    :cond_2
    return-object p1
.end method

.method private static mergeTypeForProfiles(Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;)V
    .locals 2

    .line 1863
    iget-boolean v0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableDefault:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1864
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableDefault:Z

    .line 1866
    :cond_0
    iget-boolean v0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableMms:Z

    if-eqz v0, :cond_1

    .line 1867
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableMms:Z

    .line 1869
    :cond_1
    iget-boolean v0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableSUPL:Z

    if-eqz v0, :cond_2

    .line 1870
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableSUPL:Z

    .line 1872
    :cond_2
    iget-boolean v0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableDun:Z

    if-eqz v0, :cond_3

    .line 1873
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableDun:Z

    .line 1875
    :cond_3
    iget-boolean v0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableHIPRI:Z

    if-eqz v0, :cond_4

    .line 1876
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableHIPRI:Z

    .line 1878
    :cond_4
    iget-boolean v0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableCbs:Z

    if-eqz v0, :cond_5

    .line 1879
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableCbs:Z

    .line 1881
    :cond_5
    iget-boolean v0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableFOTA:Z

    if-eqz v0, :cond_6

    .line 1882
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableFOTA:Z

    .line 1884
    :cond_6
    iget-boolean v0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableIms:Z

    if-eqz v0, :cond_7

    .line 1885
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableIms:Z

    .line 1887
    :cond_7
    iget-boolean v0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableXcap:Z

    if-eqz v0, :cond_8

    .line 1888
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableXcap:Z

    .line 1890
    :cond_8
    iget-boolean v0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableEmail:Z

    if-eqz v0, :cond_9

    .line 1891
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableEmail:Z

    .line 1893
    :cond_9
    iget-boolean v0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableIa:Z

    if-eqz v0, :cond_a

    .line 1894
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableIa:Z

    .line 1896
    :cond_a
    iget-boolean v0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableEmergencyIMSCall:Z

    if-eqz v0, :cond_b

    .line 1897
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableEmergencyIMSCall:Z

    .line 1899
    :cond_b
    iget-boolean v0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableMcx:Z

    if-eqz v0, :cond_c

    .line 1900
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableMcx:Z

    .line 1902
    :cond_c
    iget-boolean v0, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableFoc:Z

    if-eqz v0, :cond_d

    .line 1903
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableFoc:Z

    .line 1905
    :cond_d
    iget-boolean p1, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableRcs:Z

    if-eqz p1, :cond_e

    .line 1906
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableRcs:Z

    :cond_e
    return-void
.end method

.method private parseApnInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const-string v0, "parseApnInfo confReader IOException"

    const/4 v1, 0x0

    .line 1289
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/user_de/0/com.android.providers.telephony/databases/apninfo.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1290
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1291
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1292
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v4, "apns"

    .line 1293
    invoke-static {v2, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1294
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1295
    iget-object v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1296
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1299
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "apn"

    .line 1300
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "nwkname"

    .line 1301
    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "numeric"

    .line 1302
    invoke-interface {v2, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1304
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1305
    invoke-direct {p0, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getRow(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1309
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_0

    .line 1311
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseApnInfo mApnInfoNum : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1335
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto/16 :goto_7

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v1, v3

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v1, v3

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_3
    move-exception p0

    :goto_1
    :try_start_3
    const-string p1, "parseApnInfo IOException"

    .line 1330
    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v1, :cond_3

    goto :goto_3

    :catch_4
    move-exception p0

    :goto_2
    const-string p1, "parseApnInfo XmlPullParserException"

    .line 1327
    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    .line 1335
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    .line 1337
    :catch_5
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_6

    :catch_6
    move-exception p1

    :goto_4
    :try_start_5
    const-string v2, "parseApnInfo FileNotFoundException"

    .line 1313
    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const-string v2, "EUR"

    const/4 v3, 0x0

    .line 1315
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "724"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "parseApnInfo enabled popup."

    .line 1316
    invoke-static {p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1317
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string p2, "apninfo"

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1318
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "apninfo_exist"

    .line 1319
    invoke-interface {p0, p2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "apninfo_slot"

    .line 1320
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1321
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_5

    :cond_2
    const-string p0, "parseApnInfo disabled popup."

    .line 1323
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1325
    :goto_5
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_6
    return-void

    :goto_7
    if-eqz v1, :cond_4

    .line 1335
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_8

    .line 1337
    :catch_7
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1340
    :cond_4
    :goto_8
    throw p0
.end method

.method private parseApnInfoTestSim(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const-string v0, "parseApnInfoTestSim confReader IOException"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1373
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/user_de/0/com.android.providers.telephony/databases/apninfo.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1374
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1375
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1376
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v5, "apns"

    .line 1377
    invoke-static {v3, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1378
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1379
    iget-object v5, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1380
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1383
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    .line 1384
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "salesCode"

    .line 1385
    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "numeric"

    .line 1386
    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1387
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1388
    invoke-direct {p0, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getRow(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseApnInfoTestSim sales code matched : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " numeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1394
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    .line 1396
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseApnInfoTestSim mApnInfoNum : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1397
    iget-object p1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1398
    iget-object p1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 1399
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric = \'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1401
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current model do not have test apn.Remove APNs condition is "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1403
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {p0, p2, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1405
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseApnInfoTestSim exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1420
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 1422
    :catch_1
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_6

    :catchall_0
    move-exception p0

    move-object v1, v4

    goto :goto_7

    :catch_2
    move-exception p0

    move-object v1, v4

    goto :goto_2

    :catch_3
    move-exception p0

    move-object v1, v4

    goto :goto_4

    :catch_4
    move-exception p0

    move-object v1, v4

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_5
    move-exception p0

    :goto_2
    :try_start_5
    const-string p1, "parseApnInfoTestSim IOException"

    .line 1415
    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_3

    .line 1420
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_6

    :catch_6
    move-exception p0

    :goto_4
    :try_start_7
    const-string p1, "parseApnInfoTestSim XmlPullParserException"

    .line 1412
    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1413
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    if-eqz v1, :cond_3

    goto :goto_3

    :catch_7
    move-exception p0

    :goto_5
    const-string p1, "parseApnInfoTestSim FileNotFoundException"

    .line 1409
    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1410
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_6
    return v2

    :goto_7
    if-eqz v1, :cond_4

    .line 1420
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    .line 1422
    :catch_8
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1425
    :cond_4
    :goto_8
    throw p0
.end method

.method private parseCidInfo(I)Z
    .locals 12

    .line 1621
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v0

    const-string v1, "CarrierFeature_RIL_ApnProfiles"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 1623
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 1627
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseCidInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnBroadcastReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1e

    const-string v4, "\\|"

    .line 1636
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v4, v3

    .line 1637
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_e

    .line 1638
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseProfile[j] : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p1, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    aget-object v5, p1, v4

    const-string v7, ","

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    move v7, v3

    .line 1640
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_1

    .line 1641
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parse[k] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v5, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1643
    :cond_1
    new-instance v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;

    invoke-direct {v7}, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;-><init>()V

    .line 1645
    aget-object v8, v5, v3

    .line 1646
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->cid:I

    .line 1647
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCidInfo.cid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->cid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    .line 1648
    aget-object v9, v5, v6

    iput-object v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->name:Ljava/lang/String;

    .line 1649
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x3

    .line 1650
    aget-object v8, v5, v8

    iput-object v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->apn:Ljava/lang/String;

    .line 1651
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.apn : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->apn:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x4

    .line 1652
    aget-object v9, v5, v9

    iput-object v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->proxy:Ljava/lang/String;

    .line 1653
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.proxy : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->proxy:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x5

    .line 1654
    aget-object v8, v5, v8

    iput-object v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->port:Ljava/lang/String;

    .line 1655
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.port : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->port:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x6

    .line 1656
    aget-object v9, v5, v9

    iput-object v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mmsproxy:Ljava/lang/String;

    .line 1657
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.mmsproxy : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mmsproxy:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x7

    .line 1658
    aget-object v8, v5, v8

    iput-object v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mmsport:Ljava/lang/String;

    .line 1659
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.mmsport : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mmsport:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x8

    .line 1660
    aget-object v9, v5, v9

    iput-object v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user:Ljava/lang/String;

    .line 1661
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.user : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x9

    .line 1662
    aget-object v8, v5, v8

    iput-object v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->password:Ljava/lang/String;

    .line 1663
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.password : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->password:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0xa

    .line 1664
    aget-object v9, v5, v9

    iput-object v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mmsc:Ljava/lang/String;

    .line 1665
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.mmsc : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mmsc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xb

    .line 1666
    aget-object v8, v5, v8

    iput-object v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mcc:Ljava/lang/String;

    .line 1667
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.mcc : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mcc:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0xc

    .line 1668
    aget-object v9, v5, v9

    iput-object v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mnc:Ljava/lang/String;

    .line 1669
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.mnc : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xd

    .line 1670
    aget-object v8, v5, v8

    iput-object v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->numeric:Ljava/lang/String;

    .line 1671
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.numeric : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0xe

    .line 1672
    aget-object v9, v5, v9

    .line 1673
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->authtype:I

    .line 1674
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.authtype : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->authtype:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0xf

    .line 1675
    aget-object v8, v5, v8

    iput-object v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->protocol:Ljava/lang/String;

    .line 1676
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "IP"

    if-eqz v8, :cond_4

    iput-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->protocol:Ljava/lang/String;

    .line 1677
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCidInfo.protocol : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x10

    .line 1678
    aget-object v9, v5, v9

    iput-object v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->roaming_protocol:Ljava/lang/String;

    .line 1679
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iput-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->roaming_protocol:Ljava/lang/String;

    .line 1680
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.roaming_protocol : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->roaming_protocol:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x11

    .line 1681
    aget-object v8, v5, v8

    iput-object v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->type:Ljava/lang/String;

    const/16 v10, 0x2b

    const/16 v11, 0x2c

    .line 1682
    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->type:Ljava/lang/String;

    .line 1683
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.type : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->type:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x12

    .line 1684
    aget-object v9, v5, v9

    .line 1685
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->carrier_enabled:I

    .line 1686
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.carrier_enabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->carrier_enabled:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x13

    .line 1687
    aget-object v8, v5, v8

    .line 1688
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bearer : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {v8}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->bearer_bitmask:I

    :cond_7
    const/16 v8, 0x14

    .line 1690
    aget-object v9, v5, v9

    .line 1691
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->bearer_bitmask:I

    .line 1692
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.bearer_bitmask : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->bearer_bitmask:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x15

    .line 1693
    aget-object v8, v5, v8

    .line 1694
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->profile_id:I

    .line 1695
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCidInfo.profile_id : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->profile_id:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x16

    .line 1696
    aget-object v9, v5, v9

    const-string v10, "true"

    .line 1697
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1698
    iput v6, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->modem_cognitive:I

    .line 1700
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCidInfo.modem_cognitive : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->modem_cognitive:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x17

    .line 1701
    aget-object v8, v5, v8

    iput-object v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->server:Ljava/lang/String;

    .line 1702
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCidInfo.server : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->server:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x18

    .line 1703
    aget-object v6, v5, v6

    iput-object v6, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->nwkname:Ljava/lang/String;

    .line 1704
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCidInfo.nwkname : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->nwkname:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x19

    .line 1705
    aget-object v8, v5, v8

    .line 1706
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user_editable:I

    .line 1707
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCidInfo.user_editable : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user_editable:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x1a

    .line 1708
    aget-object v6, v5, v6

    .line 1709
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "hidden"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iput v3, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user_visible:I

    .line 1710
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCidInfo.user_visible : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user_visible:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x1b

    .line 1711
    aget-object v8, v5, v8

    .line 1712
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1713
    iput v3, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mtu:I

    goto :goto_2

    .line 1715
    :cond_d
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mtu:I

    .line 1717
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCidInfo.mtu : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mtu:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x1c

    .line 1718
    aget-object v6, v5, v6

    iput-object v6, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mvno_type:Ljava/lang/String;

    .line 1719
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCidInfo.mvno_type : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mvno_type:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x1d

    .line 1720
    aget-object v8, v5, v8

    iput-object v8, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mvno_match_data:Ljava/lang/String;

    .line 1721
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCidInfo.mvno_match_data : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mvno_match_data:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    aget-object v5, v5, v6

    iput-object v5, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->device_class:Ljava/lang/String;

    .line 1723
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCidInfo.device_class : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->device_class:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-object v5, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCidInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mergeCidInfo(Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;)Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_e
    return v6
.end method

.method private restoreUserPreferredApn(Ljava/lang/String;I)V
    .locals 7

    .line 2590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBackUpPreferredApnName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->mBackUpPreferredApnName:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBackUpPreferredApn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->mBackUpPreferredApn:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2592
    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->mBackUpPreferredApnName:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/providers/telephony/TelephonyProvider;->mBackUpPreferredApn:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v4, "numeric=? AND name=? AND apn=? AND (sim_slot=? OR sim_slot=?) AND edited=?"

    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 2595
    sget-object p1, Lcom/android/providers/telephony/TelephonyProvider;->mBackUpPreferredApnName:[Ljava/lang/String;

    aget-object p1, p1, p2

    const/4 v0, 0x1

    aput-object p1, v5, v0

    const/4 p1, 0x2

    sget-object v1, Lcom/android/providers/telephony/TelephonyProvider;->mBackUpPreferredApn:[Ljava/lang/String;

    aget-object v1, v1, p2

    aput-object v1, v5, p1

    const/4 p1, 0x3

    const-string v1, "-1"

    aput-object v1, v5, p1

    const/4 p1, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, p1

    const/4 p1, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, p1

    const/4 p1, 0x0

    .line 2598
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cPreferredApn.getCount() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2600
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2601
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    .line 2602
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v1, v0

    .line 2603
    invoke-direct {p0, v1, v2, p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->setPreferredApn(JI)V

    .line 2604
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set preferred user apn pos = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "PreferredApn is null, so skip"

    .line 2606
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 2609
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception caught during nwkinfo query(getCarriersFromDB): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    .line 2612
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2613
    :cond_1
    throw p0

    :cond_2
    const-string p0, "there is no preferred user apn, so skip"

    .line 2615
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2617
    :cond_3
    :goto_3
    sget-object p0, Lcom/android/providers/telephony/TelephonyProvider;->mBackUpPreferredApn:[Ljava/lang/String;

    const-string p1, ""

    aput-object p1, p0, p2

    .line 2618
    sget-object p0, Lcom/android/providers/telephony/TelephonyProvider;->mBackUpPreferredApnName:[Ljava/lang/String;

    aput-object p1, p0, p2

    return-void
.end method

.method private sendShowSelectApnPopupIntent(Landroid/content/Context;I)V
    .locals 3

    .line 408
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 410
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    aget v0, p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "recoveryShowPopup. subIds is null"

    .line 411
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 415
    :goto_1
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.SHOW_SELECT_APN_POPUP"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x1000020

    .line 416
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 417
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "subId"

    .line 418
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "slotId"

    .line 419
    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    invoke-virtual {p0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 421
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "send intent SHOW_SELECT_APN_POPUP"

    .line 422
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method private setPreferences(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    .line 1234
    :cond_1
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v1, "simprof.preferences_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1238
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "simprof.key.nwkname"

    .line 1239
    invoke-virtual {p0, v3, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "simprof.key.mccmnc"

    .line 1240
    invoke-virtual {p0, v3, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "simprof.key.imsi"

    .line 1241
    invoke-virtual {p0, v3, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getIMSI(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "simprof.key.gid"

    .line 1242
    invoke-virtual {p0, v3, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getSPCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1243
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1247
    :cond_2
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1250
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "simprof.key.last_imsi"

    .line 1251
    invoke-virtual {p0, v1, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getIMSI(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1252
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1254
    :cond_3
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentNwknames:[Ljava/lang/String;

    aput-object p1, v0, p3

    .line 1255
    iget-object p1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentNumerics:[Ljava/lang/String;

    aput-object p2, p1, p3

    .line 1256
    iget-object p1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentImsis:[Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getIMSI(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p3

    return-void
.end method

.method private setPreferredApn(JI)V
    .locals 4

    .line 2577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredApn : pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", simSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2578
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p3

    .line 2579
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/providers/telephony/ApnBroadcastReceiver;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, p3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-string v0, "setPreferredApn : insert"

    .line 2582
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2583
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2584
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "apn_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2585
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/android/providers/telephony/ApnBroadcastReceiver;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p3, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method private setProfile(Ljava/lang/String;II)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "[where] "

    const-string v5, "ro.multisim.simslotcount"

    .line 1981
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set Profile : numeric : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", slotID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mIsLoadProfileSIM : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const-string v6, "ApnBroadcastReceiver"

    const-string v7, "setProfile"

    .line 1982
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v0, "No Numeric Data. Skip setProfile."

    .line 1984
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    return-void

    .line 1989
    :cond_0
    iget-object v7, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCidInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1990
    invoke-direct {v1, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->parseCidInfo(I)Z

    move-result v7

    const/4 v10, 0x1

    if-eqz v7, :cond_8

    .line 1997
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " and (sim_slot = \'"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "\' or sim_slot = \'-1\')"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1998
    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v12, "sim_slot"

    const-string v13, "\' and sim_slot = \'-1\'"

    const-string v14, "\' AND edited != \'1\'"

    const-string v15, " AND edited != \'1\'"

    const-string v8, "\' and sim_slot = \'"

    const-string v9, "\'"

    const-string v10, "\' and numeric = \'"

    move-object/from16 v16, v6

    const-string v6, "carrier_id = \'"

    move-object/from16 v17, v5

    const-string v5, "numeric = \'"

    move-object/from16 v18, v4

    const/4 v4, 0x1

    if-le v11, v4, :cond_2

    .line 2000
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2001
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2002
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    if-nez v2, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 2004
    :goto_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2005
    iget-object v10, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    move-object/from16 p3, v3

    const/4 v3, 0x0

    invoke-virtual {v10, v11, v6, v4, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v3, p3

    goto :goto_1

    .line 2007
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2010
    :goto_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v18

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2011
    iget-object v4, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v10, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v3, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_5

    move-object/from16 v4, v17

    const/4 v10, 0x1

    .line 2014
    invoke-static {v4, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-le v4, v10, :cond_4

    .line 2016
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2017
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2018
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    if-nez v2, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 2020
    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2021
    iget-object v8, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v5, v4, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 2023
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2025
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2026
    iget-object v4, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    :try_start_3
    const-string v4, "telephony db doesn\'t have sim_slot column"

    .line 2029
    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2030
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2031
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2032
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v3, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2033
    iget-object v3, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5
    :goto_4
    const-string v3, "Remove carriers and insert carriers."

    .line 2035
    invoke-static {v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2038
    invoke-direct {v1, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getPreferredUserApn(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    const-wide/16 v4, -0x1

    .line 2041
    iget v6, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-direct {v1, v4, v5, v6}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->setPreferredApn(JI)V

    .line 2043
    :cond_6
    invoke-direct {v1, v0, v2, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->insertCidInfoToDb(Ljava/lang/String;II)I

    move-result v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    move v10, v3

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v16, v6

    .line 2048
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught during insert : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V

    :cond_7
    :goto_6
    const/4 v10, 0x0

    goto :goto_7

    :cond_8
    move-object/from16 v16, v6

    goto :goto_6

    .line 2050
    :goto_7
    invoke-virtual {v1, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->updateCurrentCarrier(I)V

    if-eqz v10, :cond_9

    .line 2053
    iget-object v0, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2056
    :cond_9
    iget-object v0, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v3, "simprof.preferences_name"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2058
    iget-object v3, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentImsis:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getIMSI(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 2059
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "simprof.key.imsi"

    .line 2060
    invoke-virtual {v1, v4, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentImsis:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2061
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentImsis : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentImsis:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v16

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    iget-object v4, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mFotaFlag:[Ljava/lang/String;

    const-string v5, "simprof.key.fota_flag"

    invoke-virtual {v1, v5, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 2064
    iget-object v0, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->DURING_FOTA:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mFotaFlag:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2065
    invoke-virtual {v1, v5, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2066
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2067
    iget-object v0, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mFotaFlag:[Ljava/lang/String;

    aput-object v7, v0, v2

    const-string v0, "fota flag off"

    .line 2068
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2070
    :cond_a
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_b
    return-void
.end method

.method private setProfile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Profile : nwkname : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", numeric : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", slotID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLoadProfileSIM : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2077
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "No Numeric Data. Skip setProfile."

    .line 2078
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    return-void

    .line 2083
    :cond_0
    iget-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mRJILSettings:Z

    if-eqz v0, :cond_1

    .line 2084
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 2085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric updated For RJIL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    move-object v7, v0

    goto :goto_0

    :cond_1
    move-object v7, p2

    .line 2088
    :goto_0
    invoke-direct {p0, p1, v7, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->setPreferences(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2089
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->parseApnInfo(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 2092
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_2

    const-string v0, "persist.ril.ims.eutranParam"

    .line 2094
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_2
    const-string v0, "persist.radio.ims.eutranParam"

    .line 2096
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    const/4 v2, 0x3

    const-string v3, "persist.radio.ss.voiceclass_2"

    const-string v4, "persist.radio.ss.voiceclass_1"

    const/4 v8, 0x1

    if-ne v2, v0, :cond_4

    .line 2098
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentNwknames:[Ljava/lang/String;

    aget-object v0, v0, p3

    const-string v2, "Singtel (Postpaid)"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "true"

    if-nez p3, :cond_3

    const-string v2, "[SIM1] set SsVoiceClassSendIms as true for SIN!!"

    .line 2100
    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2101
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-ne p3, v8, :cond_6

    const-string v2, "[SIM2] set SsVoiceClassSendIms as true for SIN!!"

    .line 2103
    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2104
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "false"

    if-nez p3, :cond_5

    const-string v2, "[SIM1] set SsVoiceClassSendIms as false!!"

    .line 2108
    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2109
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-ne p3, v8, :cond_6

    const-string v2, "[SIM2] set SsVoiceClassSendIms as false!!"

    .line 2111
    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2112
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    :cond_6
    :goto_2
    sget-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v2, "CAN"

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->FilterApnInfos(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2122
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2123
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mFilteredApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2128
    :cond_7
    iget v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-virtual {p0, v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getSPCode(I)Ljava/lang/String;

    move-result-object v0

    .line 2129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v9, ""

    if-nez v3, :cond_8

    sget-object v3, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2130
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2131
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 2132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProfile get spcode value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v3, v9

    :goto_3
    const/4 v10, 0x0

    .line 2135
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 2138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " and (sim_slot = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\' or sim_slot = \'-1\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2139
    sget-object v5, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mConfigNetworkTypeCapability:Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, "\'"

    const-string v11, "numeric = \'"

    if-eqz v5, :cond_a

    :try_start_1
    sget-object v5, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mConfigNetworkTypeCapability:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(numeric = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' AND mvno_type = \'gid\' AND mvno_match_data = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 2143
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    const-string v0, "ro.multisim.simslotcount"

    .line 2145
    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le v0, v8, :cond_c

    .line 2147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' and sim_slot = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' AND edited != \'1\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' and sim_slot = \'-1\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2149
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    if-nez p3, :cond_b

    move v5, v8

    goto :goto_4

    :cond_b
    move v5, v1

    :goto_4
    const-string v6, "sim_slot"

    .line 2151
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2152
    iget-object v5, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v3, v2, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5

    .line 2154
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND edited != \'1\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2157
    :goto_5
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[where] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2158
    iget-object v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    :try_start_3
    const-string v2, "telephony db doesn\'t have sim_slot column"

    .line 2160
    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2162
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2163
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2164
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_6
    const-string v0, "Remove carriers and insert carriers."

    .line 2166
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2168
    invoke-direct {p0, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getPreferredUserApn(I)I

    move-result v6

    .line 2170
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, -0x1

    if-ne v6, v0, :cond_d

    const-wide/16 v2, -0x1

    .line 2171
    iget v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-direct {p0, v2, v3, v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->setPreferredApn(JI)V

    .line 2173
    :cond_d
    iget-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mRJILSettings:Z

    if-eqz v0, :cond_e

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 2174
    invoke-direct/range {v2 .. v7}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->insertApnInfoToDb(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)I

    move-result p1

    if-ne p1, v8, :cond_f

    goto :goto_7

    .line 2177
    :cond_e
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->insertApnInfoToDb(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    if-ne p1, v8, :cond_f

    goto :goto_7

    :catch_1
    move-exception p1

    .line 2182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception caught during insert : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V

    :cond_f
    move v8, v1

    .line 2184
    :goto_7
    invoke-virtual {p0, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->updateCurrentCarrier(I)V

    if-eqz v8, :cond_10

    .line 2187
    iget-object p1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2189
    :cond_10
    invoke-virtual {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->persistApnAfterFactoryReset()V

    .line 2190
    iget-object p1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string p2, "simprof.preferences_name"

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2192
    iget-object p2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mFotaFlag:[Ljava/lang/String;

    const-string v0, "simprof.key.fota_flag"

    invoke-virtual {p0, v0, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    .line 2193
    iget-object p2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->DURING_FOTA:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mFotaFlag:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 2194
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2195
    invoke-virtual {p0, v0, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2196
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2197
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mFotaFlag:[Ljava/lang/String;

    aput-object v9, p0, p3

    const-string p0, "fota flag off"

    .line 2198
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private setProfileTestSim(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 2204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProfileTestSim : nwkname : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", numeric : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", slotID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLoadProfileSIM : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const-string v0, "00101"

    .line 2205
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "99999"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setProfileTestSim current simNumeric is not test sim card. Return it."

    .line 2206
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    return-void

    .line 2209
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->parseApnInfoTestSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "TMB"

    .line 2213
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "TMK"

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 2215
    invoke-direct {p0, v3, p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->parseApnInfoTestSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replace sales code to be TMK. Count = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    move-object p1, v3

    .line 2218
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 2220
    invoke-direct {p0, v1, p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->parseApnInfoTestSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replace sales code to be TMB. Count = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    const-string p1, "XAA"

    .line 2223
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "XAG"

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 2225
    invoke-direct {p0, v3, p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->parseApnInfoTestSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replace sales code to be XAG. Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    move-object v1, v3

    .line 2228
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 2230
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->parseApnInfoTestSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replace sales code to be XAA. Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    const-string v1, "EVR"

    .line 2234
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Replace sales code to be BTB. Count = "

    const/4 v4, 0x2

    const-string v5, "BTB"

    if-eqz v2, :cond_5

    if-ge v0, v4, :cond_5

    .line 2236
    invoke-direct {p0, v5, p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->parseApnInfoTestSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    move-object p1, v5

    .line 2239
    :cond_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ge v0, v4, :cond_6

    .line 2241
    invoke-direct {p0, v1, p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->parseApnInfoTestSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replace sales code to be EVR. Count = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, p1

    :goto_2
    const-string p1, "BTE"

    .line 2244
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-ge v0, v4, :cond_7

    .line 2246
    invoke-direct {p0, v5, p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->parseApnInfoTestSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    move-object v1, v5

    .line 2249
    :cond_7
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-ge v0, v4, :cond_8

    .line 2251
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->parseApnInfoTestSim(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replace sales code to be BTE. Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object p1, v1

    .line 2256
    :goto_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "No Numeric Data"

    .line 2257
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    return-void

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2261
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mApnInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_c

    .line 2263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " and (sim_slot = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\' or sim_slot = \'-1\')"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ro.multisim.simslotcount"

    .line 2264
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "numeric = \'"

    if-le v4, v3, :cond_b

    :try_start_1
    const-string v4, "USA"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' and sim_slot = \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\' AND edited != \'1\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2266
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' and sim_slot = \'-1\'"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2267
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    if-nez p3, :cond_a

    move v7, v3

    goto :goto_4

    :cond_a
    move v7, v0

    :goto_4
    const-string v8, "sim_slot"

    .line 2269
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2270
    iget-object v7, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6, v5, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5

    .line 2272
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND edited != \'1\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2275
    :goto_5
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setProfileTestSim [where] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2276
    iget-object v5, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    :try_start_3
    const-string v5, "setProfileTestSim telephony db doesn\'t have sim_slot column"

    .line 2278
    invoke-static {v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2280
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2281
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v5, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2282
    iget-object v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_6
    const-string v2, "setProfileTestSim Remove and insert test Carriers to TelephonyProvider"

    .line 2284
    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 2285
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->insertApnInfoToDb(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    if-ne p1, v3, :cond_c

    move v0, v3

    goto :goto_7

    :catch_1
    move-exception p1

    .line 2290
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfileTestSim Exception caught during insert : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V

    .line 2292
    :cond_c
    :goto_7
    invoke-virtual {p0, p3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->updateCurrentCarrier(I)V

    if-eqz v0, :cond_d

    .line 2295
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_d
    return-void
.end method

.method private static setTypeForProfile(Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;[Ljava/lang/String;)V
    .locals 5

    .line 1813
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_f

    aget-object v2, p1, v1

    const-string v3, "default"

    .line 1814
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1815
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableDefault:Z

    :cond_0
    const-string v3, "mms"

    .line 1817
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1818
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableMms:Z

    :cond_1
    const-string v3, "supl"

    .line 1820
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1821
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableSUPL:Z

    :cond_2
    const-string v3, "dun"

    .line 1823
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1824
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableDun:Z

    :cond_3
    const-string v3, "hipri"

    .line 1826
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1827
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableHIPRI:Z

    :cond_4
    const-string v3, "cbs"

    .line 1829
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1830
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableCbs:Z

    :cond_5
    const-string v3, "fota"

    .line 1832
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1833
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableFOTA:Z

    :cond_6
    const-string v3, "ims"

    .line 1835
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1836
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableIms:Z

    :cond_7
    const-string v3, "xcap"

    .line 1838
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1839
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableXcap:Z

    :cond_8
    const-string v3, "email"

    .line 1841
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1842
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableEmail:Z

    :cond_9
    const-string v3, "ia"

    .line 1844
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1845
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableIa:Z

    :cond_a
    const-string v3, "emergency"

    .line 1847
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1848
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableEmergencyIMSCall:Z

    :cond_b
    const-string v3, "mcx"

    .line 1850
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1851
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableMcx:Z

    :cond_c
    const-string v3, "foc"

    .line 1853
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1854
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableFoc:Z

    :cond_d
    const-string v3, "rcs"

    .line 1856
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1857
    iput-boolean v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableRcs:Z

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public static startProcessLog()V
    .locals 7

    .line 2632
    sget-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->fh:Ljava/util/logging/FileHandler;

    if-eqz v0, :cond_0

    .line 2633
    invoke-virtual {v0}, Ljava/util/logging/FileHandler;->close()V

    .line 2635
    :cond_0
    const-class v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->logger:Ljava/util/logging/Logger;

    .line 2636
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->LOG_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2637
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->LOG_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->changePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2638
    sget-object v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->LOG_PATH:Ljava/lang/String;

    .line 2639
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2640
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 2642
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/providers/telephony/ApnBroadcastReceiver;->LOG_PATH:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2644
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2647
    :goto_0
    :try_start_1
    new-instance v1, Ljava/util/logging/FileHandler;

    invoke-direct {v1, v0, v4}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->fh:Ljava/util/logging/FileHandler;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 2649
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2651
    :goto_1
    new-instance v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$customFormatter;

    invoke-direct {v0, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver$customFormatter;-><init>(Lcom/android/providers/telephony/ApnBroadcastReceiver$1;)V

    .line 2652
    sget-object v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->fh:Ljava/util/logging/FileHandler;

    if-eqz v1, :cond_3

    .line 2653
    sget-object v2, Lcom/android/providers/telephony/ApnBroadcastReceiver;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 2654
    sget-object v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->fh:Ljava/util/logging/FileHandler;

    invoke-virtual {v1, v0}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    goto :goto_2

    .line 2658
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Fail to make log file"

    .line 2659
    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V

    .line 2660
    :cond_2
    new-instance v1, Ljava/util/logging/FileHandler;

    invoke-direct {v1, v0, v4}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->fh:Ljava/util/logging/FileHandler;

    .line 2661
    new-instance v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$customFormatter;

    invoke-direct {v1, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver$customFormatter;-><init>(Lcom/android/providers/telephony/ApnBroadcastReceiver$1;)V

    .line 2662
    sget-object v2, Lcom/android/providers/telephony/ApnBroadcastReceiver;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lcom/android/providers/telephony/ApnBroadcastReceiver;->fh:Ljava/util/logging/FileHandler;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 2663
    sget-object v2, Lcom/android/providers/telephony/ApnBroadcastReceiver;->fh:Ljava/util/logging/FileHandler;

    invoke-virtual {v2, v1}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 2664
    sget-object v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->localRuntime:Ljava/lang/Runtime;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 660 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 2669
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "Make log file exception : IOException"

    .line 2670
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    .line 2666
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    const-string v0, "Make log file exception : SecurtyExcetion"

    .line 2667
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static declared-synchronized stopProcessLog()V
    .locals 2

    const-class v0, Lcom/android/providers/telephony/ApnBroadcastReceiver;

    monitor-enter v0

    .line 2677
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->fh:Ljava/util/logging/FileHandler;

    if-eqz v1, :cond_0

    .line 2678
    sget-object v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->fh:Ljava/util/logging/FileHandler;

    invoke-virtual {v1}, Ljava/util/logging/FileHandler;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2680
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private writeToTelephonyDb(Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;)V
    .locals 3

    .line 2528
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 2531
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "numeric"

    .line 2532
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mcc"

    .line 2533
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mnc"

    .line 2534
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apn"

    .line 2535
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "user"

    .line 2536
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->user:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "server"

    .line 2537
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->server:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    .line 2538
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "proxy"

    .line 2539
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->proxy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "port"

    .line 2540
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->port:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mmsproxy"

    .line 2541
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mmsproxy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mmsport"

    .line 2542
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mmsport:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mmsc"

    .line 2543
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mmsc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authtype"

    .line 2544
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->authtype:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "type"

    .line 2545
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sim_slot"

    .line 2546
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->sim_slot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "protocol"

    .line 2547
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roaming_protocol"

    .line 2548
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->roaming_protocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "carrier_enabled"

    .line 2549
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->carrier_enabled:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "bearer"

    .line 2550
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->bearer:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "bearer_bitmask"

    .line 2551
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->bearer_bitmask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mvno_type"

    .line 2552
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mvno_match_data"

    .line 2553
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_match_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sub_id"

    .line 2554
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->sub_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "profile_id"

    .line 2555
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->profile_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "modem_cognitive"

    .line 2556
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->modem_cognitive:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mtu"

    .line 2557
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mtu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "edited"

    .line 2558
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->edited:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "user_visible"

    .line 2559
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->user_visible:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "user_editable"

    .line 2560
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->user_editable:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2563
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 2564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeToTelephonyDb : numeric : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", carrier name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nwkname : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->nwkname:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 2565
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2569
    :cond_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    .line 2570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeToTelephonyDb : parseId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "writeToTelephonyDb : apnInfoUri is null"

    .line 2566
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2572
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception caught during insert in writeToTelephonyDb: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private writeToTelephonyDb(Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;)V
    .locals 3

    .line 2478
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    const-string v1, "carrier_id"

    .line 2481
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "name"

    .line 2482
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "numeric"

    .line 2483
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mcc"

    .line 2484
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mnc"

    .line 2485
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "apn"

    .line 2486
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "user"

    .line 2487
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "server"

    .line 2488
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->server:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    .line 2489
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "proxy"

    .line 2490
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->proxy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "port"

    .line 2491
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->port:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mmsproxy"

    .line 2492
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mmsproxy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mmsport"

    .line 2493
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mmsport:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mmsc"

    .line 2494
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mmsc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authtype"

    .line 2495
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->authtype:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "type"

    .line 2496
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sim_slot"

    .line 2497
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->sim_slot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "protocol"

    .line 2498
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roaming_protocol"

    .line 2499
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->roaming_protocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "carrier_enabled"

    .line 2500
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->carrier_enabled:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "bearer"

    .line 2501
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->bearer:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "bearer_bitmask"

    .line 2502
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->bearer_bitmask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mvno_type"

    .line 2503
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mvno_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mvno_match_data"

    .line 2504
    iget-object v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mvno_match_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sub_id"

    .line 2505
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->sub_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "profile_id"

    .line 2506
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->profile_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "modem_cognitive"

    .line 2507
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->modem_cognitive:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "mtu"

    .line 2508
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mtu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "edited"

    .line 2509
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->edited:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "user_visible"

    .line 2510
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user_visible:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "user_editable"

    .line 2511
    iget v2, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user_editable:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2514
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_NO_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 2515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeToTelephonyDb : numeric : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", carrier name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nwkname : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->nwkname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", carrier_id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->cid:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 2516
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2520
    :cond_0
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0

    .line 2521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeToTelephonyDb : parseId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "writeToTelephonyDb : apnInfoUri is null"

    .line 2517
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2523
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception caught during insert in writeToTelephonyDb: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public apnTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApnTest start ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnBroadcastReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' and apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    .line 749
    :try_start_0
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 752
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, " expectedApn= "

    if-lez p0, :cond_0

    .line 753
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SUCCESS] Numeric = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 755
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FAIL] Numeric = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 762
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 759
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception caught during query: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_3

    .line 762
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 763
    :cond_3
    throw p0
.end method

.method public appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 1281
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public checkPopup(I)V
    .locals 6

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPopup slotId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 804
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider;->getSimNumeric(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 806
    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EUR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "724"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 814
    :cond_0
    iput p1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAllNetworkList : numeric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mSubIds:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 817
    iput-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mRJILSettings:Z

    .line 818
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "INS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "INU"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 819
    :cond_1
    iget-object v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mSubIds:[I

    aget v4, v4, p1

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getIsimImpi()Ljava/lang/String;

    move-result-object v2

    .line 820
    invoke-direct {p0, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->extractNumericFromImpi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 821
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->isRJILSim(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 823
    iput-boolean v3, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mRJILSettings:Z

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "override numeric : numeric : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", to: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    move-object v0, v2

    .line 828
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->createAllNetworkList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 830
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network List Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4

    .line 832
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 833
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 834
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;

    iget-object v3, v3, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->nwkname:Ljava/lang/String;

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 836
    :cond_3
    iget-object v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->showSelectApnPopUp(Landroid/content/Context;[Ljava/lang/String;I)V

    goto :goto_1

    .line 837
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_7

    .line 838
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;

    if-eqz v1, :cond_7

    .line 840
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportPreferApnByImsi"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentNumerics:[Ljava/lang/String;

    iget v3, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    aget-object v2, v2, v3

    .line 841
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->nwkname:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentNwknames:[Ljava/lang/String;

    iget v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    aget-object v3, v3, v4

    .line 843
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 844
    iget-object p1, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->nwkname:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->numeric:Ljava/lang/String;

    iget v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->setPreferences(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p0, "sim changed but same operator."

    .line 846
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 848
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overwrite current sim card profile : slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 849
    iget-object v1, v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->nwkname:Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->setProfile(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    const-string p0, "allNetworkName is null"

    .line 854
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    const-string p1, "disablePromptPopUp. setProfile is done based on EUR"

    .line 807
    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->persistApnAfterFactoryReset()V

    return-void
.end method

.method public fotaUpdate()V
    .locals 3

    const-string v0, "ApnBroadcastReceiver"

    const-string v1, "fotaUpdate in ApnBroadcastReceiver"

    .line 767
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 769
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fota_updated_version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->TELEPHONY_FOTA_UPDATE:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public getIMSI(I)Ljava/lang/String;
    .locals 1

    .line 1124
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1125
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1128
    :cond_0
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSPCode(I)Ljava/lang/String;
    .locals 1

    .line 1090
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->getSPCodeAsHex(I)Ljava/lang/String;

    move-result-object p0

    .line 1091
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    .line 1093
    :try_start_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 1094
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1096
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1099
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get spcode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    return-object p0
.end method

.method public getSPName(I)Ljava/lang/String;
    .locals 2

    .line 1117
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1118
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 1119
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSPName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", simSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApnBroadcastReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->enableSMF:Z

    const-string v3, "LOADED"

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ss"

    .line 306
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "rebroadcastOnUnlock"

    .line 307
    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "Receive Sim State Changed : "

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v6, :cond_0

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "phone"

    .line 310
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "subscription"

    .line 311
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ltz v1, :cond_2

    .line 313
    new-instance v3, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;

    invoke-direct {v3, p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;-><init>(Lcom/android/providers/telephony/ApnBroadcastReceiver;)V

    .line 314
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 315
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    iput v1, p0, Landroid/os/Message;->arg1:I

    .line 317
    iput p2, p0, Landroid/os/Message;->arg2:I

    .line 318
    invoke-virtual {v3, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string v3, "CscFeature_RIL_SupportPreferApnByImsi"

    invoke-virtual {p0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    const-string p0, "READY"

    .line 321
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "slot"

    .line 323
    invoke-virtual {p2, p0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_2

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/providers/telephony/ApnBroadcastReceiver;->IMSI_NO_UPDATE_URI_USING_SLOTID:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "Receive sim state changed intent without extra."

    .line 328
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const-string p0, "Exit sim state change intent. Return."

    .line 330
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 331
    :cond_3
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->enableSMF:Z

    if-eqz v1, :cond_6

    const-string v1, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    .line 332
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "com.samsung.carrier.extra.CARRIER_CANONICAL_ID"

    .line 333
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "com.samsung.carrier.extra.CARRIER_STATE"

    .line 334
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v6, "CARRIER_CHANGED"

    .line 335
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "phoneId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", carrierState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "UPDATED"

    if-nez v3, :cond_4

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_4
    if-ltz v1, :cond_c

    if-ltz v5, :cond_c

    .line 338
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "simprof.preferences_name"

    .line 339
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentImsis : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentImsis:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sharedImsis : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "simprof.key.imsi"

    invoke-virtual {p0, v6, v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 344
    invoke-virtual {p0, v6, v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 346
    iget-object v3, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mCurrentImsis:[Ljava/lang/String;

    aput-object v8, v3, v1

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_5
    new-instance p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;

    invoke-direct {p2, p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;-><init>(Lcom/android/providers/telephony/ApnBroadcastReceiver;)V

    const/4 p0, 0x6

    .line 351
    invoke-virtual {p2, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 352
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    iput v1, p0, Landroid/os/Message;->arg1:I

    .line 354
    iput v5, p0, Landroid/os/Message;->arg2:I

    .line 355
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_6
    const-string v1, "com.samsung.android.intent.action.SHOW_SELECT_APN_POPUP"

    .line 357
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "slotId"

    const/4 v5, 0x1

    if-eqz v1, :cond_7

    .line 358
    new-instance v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;

    invoke-direct {v1, p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;-><init>(Lcom/android/providers/telephony/ApnBroadcastReceiver;)V

    .line 359
    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 360
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 361
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 362
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "subId"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/os/Message;->arg2:I

    .line 363
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_7
    const-string v1, "com.samsung.android.intent.action.NWKNAME_SELECT_DONE"

    .line 364
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 365
    new-instance v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;

    invoke-direct {v1, p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;-><init>(Lcom/android/providers/telephony/ApnBroadcastReceiver;)V

    const/4 p0, 0x2

    .line 366
    invoke-virtual {v1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 367
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "selectNwknameIndex"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/os/Message;->arg1:I

    .line 368
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/os/Message;->arg2:I

    .line 369
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v3, "selectedNwkname"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectNwknameIndex :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "slotId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",selectedNwkname : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 372
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 373
    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 375
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_8
    const-string v1, "com.samsung.android.intent.action.FOTA_UPDATE"

    .line 376
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 378
    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CCT"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p0, "Sub operator is CCT. Block EVENT_FOTA_UPDATE to keep previous apns. Return"

    .line 379
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 383
    :cond_9
    new-instance p2, Landroid/os/HandlerThread;

    invoke-direct {p2, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 385
    new-instance v1, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v1, p0, p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;-><init>(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/os/Looper;)V

    const/4 p0, 0x3

    .line 386
    invoke-virtual {v1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 387
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 388
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 389
    :cond_a
    iget-boolean v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->enableSMF:Z

    if-nez v1, :cond_b

    const-string v1, "com.samsung.intent.action.CSC_SHOW_SIM_PROFILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 391
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 393
    new-instance v3, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, p0, v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;-><init>(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/os/Looper;)V

    const/4 p0, 0x5

    .line 394
    invoke-virtual {v3, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 395
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string p1, "force"

    .line 396
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 397
    invoke-virtual {v3, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_b
    const-string p2, "com.samsung.android.intent.action.APN_TEST"

    .line 398
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 399
    new-instance p2, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;

    invoke-direct {p2, p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;-><init>(Lcom/android/providers/telephony/ApnBroadcastReceiver;)V

    const/4 p0, 0x4

    .line 400
    invoke-virtual {p2, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 401
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 402
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 404
    :cond_c
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Exit onReceive() action = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method persistApnAfterFactoryReset()V
    .locals 4

    const/4 v0, 0x0

    .line 2303
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2304
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2305
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LRA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2306
    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2307
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SyncML_SupportKeepingApnAfterFactoryReset"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2308
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/apn-changes.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2309
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-string v0, "/persistent_apn_changes"

    .line 2312
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistApnAfterFactoryReset update. Uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2313
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2314
    iget-object p0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2315
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    .line 2314
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "catch NullPointerException that can occur when passing null as ContentValue"

    .line 2317
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->loge(Ljava/lang/String;)V

    .line 2318
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public sendCompleteIntent()V
    .locals 5

    .line 775
    iget-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 776
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$1;

    invoke-direct {v2, p0, v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver$1;-><init>(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/content/Context;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showSelectApnPopUp(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 7

    const-string p0, "showSelectApnPopUp"

    .line 1186
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 1187
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1188
    const-class v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 1189
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x8000000

    .line 1190
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x800000

    .line 1191
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "nwkname"

    .line 1193
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1194
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 1195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nwkname item : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "slotID"

    .line 1197
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1198
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1199
    array-length p3, p2

    if-lez p3, :cond_1

    aget-object p2, p2, v2

    if-eqz p2, :cond_1

    .line 1200
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method updateCurrentCarrier(I)V
    .locals 1

    .line 2325
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCurrentCarrier slotID ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 2328
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2330
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 p0, 0x0

    .line 2332
    :goto_0
    instance-of p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz p1, :cond_0

    .line 2333
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->updateCurrentCarrierInProvider()Z

    goto :goto_1

    :cond_0
    const-string p0, "Phone is not PhoneProxy or null."

    .line 2335
    invoke-static {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public updateDB(II)V
    .locals 3

    .line 795
    iput p1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver;->mIsLoadProfileSIM:I

    .line 796
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider;->getSimNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDB slotId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDB numeric : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 799
    invoke-direct {p0, v0, p1, p2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->setProfile(Ljava/lang/String;II)V

    return-void
.end method
