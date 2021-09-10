.class public final synthetic Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$yvzRz3b6LggtcLC4dELiSQh9o_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$yvzRz3b6LggtcLC4dELiSQh9o_0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$yvzRz3b6LggtcLC4dELiSQh9o_0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$yvzRz3b6LggtcLC4dELiSQh9o_0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$yvzRz3b6LggtcLC4dELiSQh9o_0;->f$1:Landroid/content/Context;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p0, p1}, Lcom/android/providers/telephony/secutil/MmsSmsProviderUtil;->lambda$getGrantedUriFromFile$2(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
