.class public final synthetic Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinSms$4m_C2aZWu0EyavMgY8xsFS3evdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinSms$4m_C2aZWu0EyavMgY8xsFS3evdE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinSms$4m_C2aZWu0EyavMgY8xsFS3evdE;

    invoke-direct {v0}, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinSms$4m_C2aZWu0EyavMgY8xsFS3evdE;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinSms$4m_C2aZWu0EyavMgY8xsFS3evdE;->INSTANCE:Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinSms$4m_C2aZWu0EyavMgY8xsFS3evdE;

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

    invoke-static {p1}, Lcom/android/providers/telephony/bin/binmsg/BinSms;->lambda$move$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
