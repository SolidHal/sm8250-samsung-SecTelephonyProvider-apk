.class Lcom/android/providers/telephony/secutil/MmsSmsProviderUtil$ReadStatus;
.super Ljava/lang/Object;
.source "MmsSmsProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/secutil/MmsSmsProviderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadStatus"
.end annotation


# instance fields
.field mNewSentTime:J

.field mOldSentTime:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    iput-wide p1, p0, Lcom/android/providers/telephony/secutil/MmsSmsProviderUtil$ReadStatus;->mOldSentTime:J

    .line 808
    iput-wide p3, p0, Lcom/android/providers/telephony/secutil/MmsSmsProviderUtil$ReadStatus;->mNewSentTime:J

    return-void
.end method
