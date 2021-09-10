.class public Lcom/android/providers/telephony/CarrierIdProvider;
.super Landroid/content/ContentProvider;
.source "CarrierIdProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "carrier_id"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final CARRIERS_ID_UNIQUE_FIELDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREF_FILE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final s_urlMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mCurrentSubscriptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mDbHelper:Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 77
    const-class v0, Lcom/android/providers/telephony/CarrierIdProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->TAG:Ljava/lang/String;

    .line 87
    const-class v0, Lcom/android/providers/telephony/CarrierIdProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->PREF_FILE:Ljava/lang/String;

    .line 89
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "mccmnc"

    const-string v2, "gid1"

    const-string v3, "gid2"

    const-string v4, "plmn"

    const-string v5, "imsi_prefix_xpattern"

    const-string v6, "spn"

    const-string v7, "apn"

    const-string v8, "iccid_prefix"

    const-string v9, "privilege_access_rule"

    const-string v10, "parent_carrier_id"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->CARRIERS_ID_UNIQUE_FIELDS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 163
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/CarrierIdProvider;->mCurrentSubscriptionMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/telephony/CarrierIdProvider;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/CarrierIdProvider;->setAppliedVersion(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/telephony/CarrierIdProvider;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/CarrierIdProvider;->updateDatabaseFromPb(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result p0

    return p0
.end method

.method private checkReadPermission()V
    .locals 1

    .line 679
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 684
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "No permission to read CarrierId provider"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkWritePermission()V
    .locals 1

    .line 688
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 693
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "No permission to write CarrierId provider"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private convertCarrierAttrToContentValues(Landroid/content/ContentValues;Ljava/util/List;Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;",
            "I)V"
        }
    .end annotation

    const/16 v0, 0x8

    if-le p4, v0, :cond_1

    .line 431
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 432
    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 433
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p4, :pswitch_data_0

    .line 511
    sget-object v2, Lcom/android/providers/telephony/CarrierIdProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 503
    :pswitch_0
    iget-object v2, p3, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->privilegeAccessRule:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    const-string v5, "privilege_access_rule"

    .line 504
    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, p4, 0x1

    .line 505
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/providers/telephony/CarrierIdProvider;->convertCarrierAttrToContentValues(Landroid/content/ContentValues;Ljava/util/List;Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;I)V

    .line 506
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_0

    .line 495
    :pswitch_1
    iget-object v2, p3, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->iccidPrefix:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    const-string v5, "iccid_prefix"

    .line 496
    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, p4, 0x1

    .line 497
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/providers/telephony/CarrierIdProvider;->convertCarrierAttrToContentValues(Landroid/content/ContentValues;Ljava/util/List;Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;I)V

    .line 498
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_1

    .line 487
    :pswitch_2
    iget-object v2, p3, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->preferredApn:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    const-string v5, "apn"

    .line 488
    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, p4, 0x1

    .line 489
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/providers/telephony/CarrierIdProvider;->convertCarrierAttrToContentValues(Landroid/content/ContentValues;Ljava/util/List;Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;I)V

    .line 490
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_2

    .line 479
    :pswitch_3
    iget-object v2, p3, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->spn:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_3
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 480
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "spn"

    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, p4, 0x1

    .line 481
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/providers/telephony/CarrierIdProvider;->convertCarrierAttrToContentValues(Landroid/content/ContentValues;Ljava/util/List;Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;I)V

    .line 482
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_3

    .line 471
    :pswitch_4
    iget-object v2, p3, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->plmn:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_4
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    const-string v5, "plmn"

    .line 472
    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, p4, 0x1

    .line 473
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/providers/telephony/CarrierIdProvider;->convertCarrierAttrToContentValues(Landroid/content/ContentValues;Ljava/util/List;Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;I)V

    .line 474
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_4

    .line 463
    :pswitch_5
    iget-object v2, p3, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid2:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_5
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 464
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gid2"

    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, p4, 0x1

    .line 465
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/providers/telephony/CarrierIdProvider;->convertCarrierAttrToContentValues(Landroid/content/ContentValues;Ljava/util/List;Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;I)V

    .line 466
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_5

    .line 455
    :pswitch_6
    iget-object v2, p3, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->gid1:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_6
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 456
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gid1"

    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, p4, 0x1

    .line 457
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/providers/telephony/CarrierIdProvider;->convertCarrierAttrToContentValues(Landroid/content/ContentValues;Ljava/util/List;Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;I)V

    .line 458
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_6

    .line 447
    :pswitch_7
    iget-object v2, p3, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->imsiPrefixXpattern:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_7
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    const-string v5, "imsi_prefix_xpattern"

    .line 448
    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, p4, 0x1

    .line 449
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/providers/telephony/CarrierIdProvider;->convertCarrierAttrToContentValues(Landroid/content/ContentValues;Ljava/util/List;Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;I)V

    .line 450
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_7

    .line 439
    :pswitch_8
    iget-object v2, p3, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;->mccmncTuple:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_8
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    const-string v5, "mccmnc"

    .line 440
    invoke-virtual {p1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, p4, 0x1

    .line 441
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/android/providers/telephony/CarrierIdProvider;->convertCarrierAttrToContentValues(Landroid/content/ContentValues;Ljava/util/List;Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;I)V

    .line 442
    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    move v4, v1

    goto :goto_8

    :cond_2
    move v0, v4

    :goto_9
    if-nez v0, :cond_3

    add-int/2addr p4, v1

    .line 516
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/telephony/CarrierIdProvider;->convertCarrierAttrToContentValues(Landroid/content/ContentValues;Ljava/util/List;Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;I)V

    :cond_3
    return-void

    nop

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
    .end packed-switch
.end method

.method private getAppliedVersion()I
    .locals 2

    .line 567
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->PREF_FILE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "version"

    const/4 v1, -0x1

    .line 569
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStringForCarrierIdTableCreation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(_id INTEGER PRIMARY KEY,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "mccmnc"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " TEXT NOT NULL,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "gid1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " TEXT,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gid2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "plmn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "imsi_prefix_xpattern"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "spn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iccid_prefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "privilege_access_rule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "carrier_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "carrier_id"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " INTEGER DEFAULT -1,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "parent_carrier_id"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " INTEGER DEFAULT -1,UNIQUE ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/providers/telephony/CarrierIdProvider;->CARRIERS_ID_UNIQUE_FIELDS:Ljava/util/List;

    const-string v1, ", "

    .line 182
    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "));"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringForIndexCreation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS mccmncIndex ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "mccmnc"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ");"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUpdateCarrierList()Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;
    .locals 9

    .line 527
    sget-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->getAppliedVersion()I

    move-result v1

    const/4 v2, 0x0

    .line 534
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v3, "carrier_list.pb"

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    :try_start_1
    invoke-static {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->readInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->parseFrom([B)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 539
    invoke-static {p0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v3

    move-object p0, v2

    .line 537
    :goto_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read carrier list from assets pb failure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 539
    invoke-static {p0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v2

    .line 542
    :goto_1
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "misc/carrierid/carrier_list.pb"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 543
    :try_start_4
    invoke-static {v4}, Lcom/android/providers/telephony/CarrierIdProvider;->readInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->parseFrom([B)Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 547
    invoke-static {v4}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, p0

    move-object p0, v0

    goto :goto_5

    :catch_3
    move-exception v4

    move-object v8, v4

    move-object v4, p0

    move-object p0, v8

    .line 545
    :goto_2
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read carrier list from ota pb failure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 547
    invoke-static {v4}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object p0, v2

    :goto_3
    if-eqz v3, :cond_0

    .line 551
    iget v4, v3, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->version:I

    if-le v4, v1, :cond_0

    move-object v2, v3

    move v1, v4

    :cond_0
    const/4 v3, 0x0

    if-eqz p0, :cond_3

    .line 556
    sget-boolean v4, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_1

    const-string v4, "persist.telephony.test.carrierid.ota"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->version:I

    if-le v4, v1, :cond_3

    .line 560
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->version:I

    goto :goto_4

    :cond_3
    move-object p0, v2

    .line 562
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "latest version: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " need update: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catchall_2
    move-exception p0

    .line 547
    :goto_5
    invoke-static {v4}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 548
    throw p0

    :catchall_3
    move-exception v0

    move-object v2, p0

    .line 539
    :goto_6
    invoke-static {v2}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 540
    throw v0
.end method

.method private queryCarrierIdForCurrentSubscription(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 644
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 645
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 647
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid subid in provided uri"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 652
    :cond_0
    :goto_0
    sget-object p1, Lcom/android/providers/telephony/CarrierIdProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCarrierIdForSubId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7fffffff

    if-ne v0, p1, :cond_1

    .line 656
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 659
    :cond_1
    iget-object p1, p0, Lcom/android/providers/telephony/CarrierIdProvider;->mCurrentSubscriptionMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 661
    new-instance p0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object p0

    .line 663
    :cond_2
    new-instance p1, Landroid/database/MatrixCursor;

    const/4 v2, 0x1

    invoke-direct {p1, p2, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 664
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 665
    :goto_1
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 666
    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "carrier_id"

    .line 667
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 668
    iget-object v3, p0, Lcom/android/providers/telephony/CarrierIdProvider;->mCurrentSubscriptionMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    :cond_3
    const-string v4, "carrier_name"

    .line 669
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 670
    iget-object v3, p0, Lcom/android/providers/telephony/CarrierIdProvider;->mCurrentSubscriptionMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 672
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid column "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object p1
.end method

.method private static readInputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    .line 591
    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 592
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 595
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private setAppliedVersion(I)V
    .locals 4

    const v0, 0xffffff

    and-int/2addr v0, p1

    .line 574
    sget-object v1, Lcom/android/providers/telephony/CarrierIdProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update version number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " relative version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->PREF_FILE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 578
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "version"

    .line 579
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 580
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateCarrierIdForCurrentSubscription(Landroid/net/Uri;Landroid/content/ContentValues;)I
    .locals 6

    .line 602
    sget-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->TAG:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCarrierIdForSubId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    .line 610
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 613
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "telephony_subscription_service"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 615
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 617
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 619
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 621
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 622
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 626
    iget-object v1, p0, Lcom/android/providers/telephony/CarrierIdProvider;->mCurrentSubscriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 627
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 p2, p2, 0x1

    .line 629
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v5, p0, Lcom/android/providers/telephony/CarrierIdProvider;->mCurrentSubscriptionMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/Telephony$CarrierId;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    :cond_3
    return p2

    .line 636
    :cond_4
    iget-object v0, p0, Lcom/android/providers/telephony/CarrierIdProvider;->mCurrentSubscriptionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Landroid/provider/Telephony$CarrierId;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 p0, 0x1

    return p0

    .line 604
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid subid in provided uri "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateDatabaseFromPb(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "carrier_id"

    .line 374
    sget-object v3, Lcom/android/providers/telephony/CarrierIdProvider;->TAG:Ljava/lang/String;

    const-string v4, "update database from pb file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/telephony/CarrierIdProvider;->getUpdateCarrierList()Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 384
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v6, 0x0

    .line 385
    invoke-virtual {v1, v2, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 386
    iget-object v7, v4, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->carrierId:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;

    array-length v8, v7

    move v9, v5

    move v10, v9

    :goto_0
    if-ge v9, v8, :cond_5

    aget-object v11, v7, v9

    .line 387
    iget-object v12, v11, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierAttribute:[Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;

    array-length v13, v12

    move v14, v5

    :goto_1
    if-ge v14, v13, :cond_4

    aget-object v15, v12, v14

    .line 388
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 389
    iget v5, v11, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->canonicalId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "carrier_name"

    move-object/from16 v16, v7

    .line 390
    iget-object v7, v11, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->carrierName:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget v5, v11, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->parentCanonicalId:I

    if-lez v5, :cond_1

    const-string v5, "parent_carrier_id"

    .line 394
    iget v7, v11, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->parentCanonicalId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 397
    invoke-direct {v0, v6, v5, v15, v7}, Lcom/android/providers/telephony/CarrierIdProvider;->convertCarrierAttrToContentValues(Landroid/content/ContentValues;Ljava/util/List;Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierAttribute;I)V

    .line 398
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const/4 v15, 0x4

    const/4 v7, 0x0

    .line 401
    invoke-virtual {v1, v2, v7, v6, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v17

    const-wide/16 v6, 0x0

    cmp-long v6, v17, v6

    if-lez v6, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 405
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDatabaseFromPB insertion failure, row: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "carrier id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v11, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierId;->canonicalId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v16

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v16, v7

    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 412
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update database from pb. inserted rows = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v10, :cond_6

    .line 415
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 417
    :cond_6
    iget v2, v4, Lcom/android/internal/telephony/nano/CarrierIdProto$CarrierList;->version:I

    invoke-direct {v0, v2}, Lcom/android/providers/telephony/CarrierIdProvider;->setAppliedVersion(I)V

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v10

    :catchall_0
    move-exception v0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 421
    throw v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 262
    invoke-direct {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->checkWritePermission()V

    .line 270
    sget-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "carrier_id"

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 275
    sget-object p2, Lcom/android/providers/telephony/CarrierIdProvider;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  delete.count="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return p1

    .line 282
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot delete that URL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/android/providers/telephony/CarrierIdProvider;->mDbHelper:Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 205
    sget-object p0, Lcom/android/providers/telephony/CarrierIdProvider;->TAG:Ljava/lang/String;

    const-string p1, "getType"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/providers/telephony/CarrierIdProvider;->mDbHelper:Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 241
    invoke-direct {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->checkWritePermission()V

    .line 242
    sget-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "carrier_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 248
    sget-object v0, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 250
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object p1

    :cond_0
    return-object v1

    .line 256
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot insert that URL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .locals 5

    .line 193
    sget-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance v0, Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;-><init>(Lcom/android/providers/telephony/CarrierIdProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/telephony/CarrierIdProvider;->mDbHelper:Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;

    .line 195
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 196
    sget-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v1, "carrier_id"

    const-string v2, "all"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    sget-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v2, "all/update_db"

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    sget-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    const-string v2, "all/get_version"

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 199
    iget-object v0, p0, Lcom/android/providers/telephony/CarrierIdProvider;->mDbHelper:Lcom/android/providers/telephony/CarrierIdProvider$CarrierIdDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/telephony/CarrierIdProvider;->updateDatabaseFromPb(Landroid/database/sqlite/SQLiteDatabase;)I

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 220
    sget-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p3, 0x3

    if-eq v0, p3, :cond_0

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/CarrierIdProvider;->queryCarrierIdForCurrentSubscription(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->checkReadPermission()V

    .line 224
    new-instance p1, Landroid/database/MatrixCursor;

    const-string p2, "version"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array p2, v1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 225
    invoke-direct {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->getAppliedVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, p3

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p1

    .line 228
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->checkReadPermission()V

    .line 229
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string p1, "carrier_id"

    .line 230
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 233
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 288
    invoke-direct {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->checkWritePermission()V

    .line 297
    sget-object v0, Lcom/android/providers/telephony/CarrierIdProvider;->s_urlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p3, 0x2

    if-eq v0, p3, :cond_0

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/android/providers/telephony/CarrierIdProvider;->updateCarrierIdForCurrentSubscription(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result p0

    return p0

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/CarrierIdProvider;->updateDatabaseFromPb(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result p0

    return p0

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/telephony/CarrierIdProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "carrier_id"

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 304
    sget-object p2, Lcom/android/providers/telephony/CarrierIdProvider;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "  update.count="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_2

    .line 306
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    return p1
.end method
