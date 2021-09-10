.class Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;
.super Ljava/lang/Object;
.source "SCloudMmsBnRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/SCloudMmsBnRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BundleBuilder"
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 1651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1652
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method putDataList(Ljava/util/List;)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;"
        }
    .end annotation

    .line 1671
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->mBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/ContentValues;

    .line 1672
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object p0
.end method

.method putHasNext(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;
    .locals 2

    .line 1666
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "hasNext"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method putResult(Z)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;
    .locals 2

    .line 1656
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method putResultCode(I)Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;
    .locals 2

    .line 1661
    iget-object v0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "resultCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method toBundle()Landroid/os/Bundle;
    .locals 1

    .line 1677
    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$BundleBuilder;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
