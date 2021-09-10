.class public final synthetic Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$XdBPoouyK9iosEc3NjC7HRE0BYs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$XdBPoouyK9iosEc3NjC7HRE0BYs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$XdBPoouyK9iosEc3NjC7HRE0BYs;

    invoke-direct {v0}, Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$XdBPoouyK9iosEc3NjC7HRE0BYs;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$XdBPoouyK9iosEc3NjC7HRE0BYs;->INSTANCE:Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$XdBPoouyK9iosEc3NjC7HRE0BYs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/providers/telephony/secutil/MmsSmsProviderUtil;->lambda$msgBackup$1(Landroid/net/Uri;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
