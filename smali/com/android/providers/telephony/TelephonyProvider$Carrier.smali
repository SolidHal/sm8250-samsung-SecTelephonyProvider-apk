.class Lcom/android/providers/telephony/TelephonyProvider$Carrier;
.super Ljava/lang/Object;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Carrier"
.end annotation


# instance fields
.field apn:Ljava/lang/String;

.field authType:I

.field bearer:Ljava/lang/String;

.field carrier:Ljava/lang/String;

.field carrierEnabled:Z

.field carrierEnabledRoaming:Z

.field editable:Z

.field hiddenStatus:Ljava/lang/String;

.field iccid:Ljava/lang/String;

.field mmsPort:Ljava/lang/String;

.field mmsProxy:Ljava/lang/String;

.field mmsc:Ljava/lang/String;

.field modemCognitive:I

.field mtu:I

.field numeric:Ljava/lang/String;

.field nwkName:Ljava/lang/String;

.field password:Ljava/lang/String;

.field port:Ljava/lang/String;

.field preferred:Z

.field profileId:I

.field protocol:Ljava/lang/String;

.field proxy:Ljava/lang/String;

.field roaming:I

.field roamingProtocol:Ljava/lang/String;

.field salesCode:Ljava/lang/String;

.field server:Ljava/lang/String;

.field simSlot:I

.field skip464Xlat:I

.field spCode:Ljava/lang/String;

.field spName:Ljava/lang/String;

.field subsetCode:Ljava/lang/String;

.field types:[Ljava/lang/String;

.field user:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/telephony/TelephonyProvider$1;)V
    .locals 0

    .line 7804
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$Carrier;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 7851
    :cond_0
    check-cast p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;

    .line 7852
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->numeric:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->numeric:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7853
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->numeric:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->numeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 7854
    :cond_1
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->carrier:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->carrier:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7855
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->carrier:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->carrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 7856
    :cond_2
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->apn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->apn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7857
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->apn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 7858
    :cond_3
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->proxy:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->proxy:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 7859
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->proxy:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 7860
    :cond_4
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->port:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->port:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 7861
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->port:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 7862
    :cond_5
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 7863
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsc:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 7864
    :cond_6
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsProxy:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsProxy:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 7865
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsProxy:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    .line 7866
    :cond_7
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsPort:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsPort:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 7867
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsPort:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 7868
    :cond_8
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->user:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->user:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 7869
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    .line 7870
    :cond_9
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->types:[Ljava/lang/String;

    if-eqz v1, :cond_a

    array-length v2, v1

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->types:[Ljava/lang/String;

    if-eqz v2, :cond_a

    array-length v2, v2

    if-lez v2, :cond_a

    .line 7871
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->types:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 7872
    :cond_a
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->protocol:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->protocol:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 7873
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->protocol:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 7874
    :cond_b
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->roamingProtocol:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->roamingProtocol:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 7875
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->roamingProtocol:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    .line 7876
    :cond_c
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->subsetCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->subsetCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 7877
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->subsetCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->subsetCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    .line 7878
    :cond_d
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 7879
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v0

    .line 7880
    :cond_e
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    .line 7882
    :cond_f
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    return v0

    .line 7885
    :cond_10
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 7886
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v0

    .line 7887
    :cond_11
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->iccid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->iccid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 7888
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->iccid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->iccid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v0

    .line 7889
    :cond_12
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->bearer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->bearer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 7890
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->bearer:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->bearer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v0

    .line 7891
    :cond_13
    iget v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->authType:I

    iget v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->authType:I

    if-eq v1, v2, :cond_14

    return v0

    .line 7892
    :cond_14
    iget v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->roaming:I

    iget v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->roaming:I

    if-eq v1, v2, :cond_15

    return v0

    .line 7893
    :cond_15
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->password:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->password:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 7894
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->password:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v0

    .line 7895
    :cond_16
    iget v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mtu:I

    iget v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mtu:I

    if-eq v1, v2, :cond_17

    return v0

    .line 7896
    :cond_17
    iget v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->profileId:I

    iget v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->profileId:I

    if-eq v1, v2, :cond_18

    return v0

    .line 7897
    :cond_18
    iget v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->modemCognitive:I

    iget v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->modemCognitive:I

    if-eq v1, v2, :cond_19

    return v0

    .line 7898
    :cond_19
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->hiddenStatus:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->hiddenStatus:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 7899
    iget-object v1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->hiddenStatus:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->hiddenStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    .line 7900
    :cond_1a
    iget-boolean p1, p1, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->editable:Z

    iget-boolean p0, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->editable:Z

    if-eq p1, p0, :cond_1b

    return v0

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 7843
    invoke-virtual {p0}, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 7906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7907
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->carrier:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->numeric:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "  <apn carrier=\""

    .line 7908
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "      mcc=\""

    .line 7909
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->numeric:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v2, "\"\n      mnc=\""

    .line 7910
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->numeric:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7911
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->apn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "      apn=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->apn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7912
    :cond_0
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->proxy:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "      proxy=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->proxy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7913
    :cond_1
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->port:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "      port=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->port:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7914
    :cond_2
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->server:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "      server=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->server:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7915
    :cond_3
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsc:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "      mmsc=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7916
    :cond_4
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsProxy:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "      mmsproxy=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7917
    :cond_5
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsPort:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "      mmsport=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mmsPort:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7918
    :cond_6
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->user:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "      user=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->user:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7919
    :cond_7
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->password:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "      password=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->password:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7920
    :cond_8
    iget v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->authType:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    const-string v2, "      authtype=\""

    .line 7921
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->authType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7922
    :cond_9
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->bearer:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "      bearer_bitmask=\""

    .line 7923
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->bearer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7924
    :cond_a
    iget v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mtu:I

    if-eqz v2, :cond_b

    const/16 v3, 0x5dc

    if-eq v2, v3, :cond_b

    const-string v2, "      mtu=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->mtu:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7925
    :cond_b
    iget v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->profileId:I

    if-eqz v2, :cond_c

    const-string v2, "      profile_id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->profileId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7926
    :cond_c
    iget v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->modemCognitive:I

    if-eqz v2, :cond_d

    const-string v2, "      modem_cognitive=\"true\"\n"

    .line 7927
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7928
    :cond_d
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->types:[Ljava/lang/String;

    if-eqz v2, :cond_e

    array-length v2, v2

    if-lez v2, :cond_e

    const-string v2, "      type=\""

    .line 7929
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->types:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/providers/telephony/TelephonyProvider;->access$3800([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7930
    :cond_e
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->protocol:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "IP"

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "      protocol=\""

    .line 7931
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7932
    :cond_f
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->roamingProtocol:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "      roaming_protocol=\""

    .line 7933
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7936
    :cond_10
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "      mvno_match_data=\""

    if-nez v2, :cond_11

    const-string v2, "      mvno_type=\"spn\"\n"

    .line 7937
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7938
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 7939
    :cond_11
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->subsetCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "      mvno_type=\"imsi\"\n"

    .line 7940
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7941
    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CAN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 7942
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->subsetCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7943
    :cond_12
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->numeric:Ljava/lang/String;

    const-string v4, "45502"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 7944
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->subsetCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7946
    :cond_13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->subsetCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7948
    :cond_14
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "      mvno_type=\"gid\"\n"

    .line 7949
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7950
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->spCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7951
    :cond_15
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->iccid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "      mvno_type=\"iccid\"\n"

    .line 7952
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7953
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->iccid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7957
    :cond_16
    :goto_0
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->hiddenStatus:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->hiddenStatus:Ljava/lang/String;

    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "      user_visible=\"false\"\n"

    .line 7958
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7960
    :cond_17
    iget-boolean v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->editable:Z

    if-nez v2, :cond_18

    const-string v2, "      user_editable=\"false\"\n"

    .line 7961
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7964
    :cond_18
    iget v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->roaming:I

    if-eqz v2, :cond_19

    const-string v2, "      roaming=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->roaming:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    const-string v2, "      skip_464xlat=\""

    .line 7966
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/providers/telephony/TelephonyProvider$Carrier;->skip464Xlat:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  />\n\n"

    .line 7967
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7969
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
