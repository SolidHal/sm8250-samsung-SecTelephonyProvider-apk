.class public final synthetic Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$CydwhNDJogDIOnQqbhO6WipjEAs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$CydwhNDJogDIOnQqbhO6WipjEAs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$CydwhNDJogDIOnQqbhO6WipjEAs;

    invoke-direct {v0}, Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$CydwhNDJogDIOnQqbhO6WipjEAs;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$CydwhNDJogDIOnQqbhO6WipjEAs;->INSTANCE:Lcom/android/providers/telephony/secutil/-$$Lambda$MmsSmsProviderUtil$CydwhNDJogDIOnQqbhO6WipjEAs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lcom/android/providers/telephony/secutil/MmsSmsProviderUtil;->lambda$msgBackup$0(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method
