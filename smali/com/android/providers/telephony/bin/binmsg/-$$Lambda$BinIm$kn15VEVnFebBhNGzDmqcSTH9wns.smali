.class public final synthetic Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinIm$kn15VEVnFebBhNGzDmqcSTH9wns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinIm$kn15VEVnFebBhNGzDmqcSTH9wns;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinIm$kn15VEVnFebBhNGzDmqcSTH9wns;

    invoke-direct {v0}, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinIm$kn15VEVnFebBhNGzDmqcSTH9wns;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinIm$kn15VEVnFebBhNGzDmqcSTH9wns;->INSTANCE:Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinIm$kn15VEVnFebBhNGzDmqcSTH9wns;

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

    invoke-static {p1}, Lcom/android/providers/telephony/bin/binmsg/BinIm;->lambda$move$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
