.class public Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;
.super Ljava/lang/Object;
.source "BnRUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/BnRUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadTableInfo"
.end annotation


# instance fields
.field private address_list:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private classification:I

.field private is_mute:I

.field private pin_to_top:I


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashSet;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;III)V"
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;->address_list:Ljava/util/LinkedHashSet;

    .line 175
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 176
    iput p2, p0, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;->is_mute:I

    .line 177
    iput p3, p0, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;->pin_to_top:I

    .line 178
    iput p4, p0, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;->classification:I

    return-void
.end method


# virtual methods
.method public getAddressList()Ljava/util/LinkedHashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;->address_list:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method public getClassification()I
    .locals 0

    .line 190
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;->classification:I

    return p0
.end method

.method public getThreadMute()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;->is_mute:I

    return p0
.end method

.method public getThreadPinToTop()I
    .locals 0

    .line 186
    iget p0, p0, Lcom/android/providers/telephony/backup/BnRUtils$ThreadTableInfo;->pin_to_top:I

    return p0
.end method
