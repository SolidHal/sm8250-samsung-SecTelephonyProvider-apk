.class public final synthetic Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinMms$U_utvOzYjMendQm9q5HK7JWGNVs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinMms$U_utvOzYjMendQm9q5HK7JWGNVs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinMms$U_utvOzYjMendQm9q5HK7JWGNVs;

    invoke-direct {v0}, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinMms$U_utvOzYjMendQm9q5HK7JWGNVs;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinMms$U_utvOzYjMendQm9q5HK7JWGNVs;->INSTANCE:Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinMms$U_utvOzYjMendQm9q5HK7JWGNVs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/providers/telephony/bin/binmsg/BinMms;->lambda$delete$2(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
