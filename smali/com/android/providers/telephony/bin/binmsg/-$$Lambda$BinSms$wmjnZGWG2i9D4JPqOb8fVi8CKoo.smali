.class public final synthetic Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinSms$wmjnZGWG2i9D4JPqOb8fVi8CKoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinSms$wmjnZGWG2i9D4JPqOb8fVi8CKoo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinSms$wmjnZGWG2i9D4JPqOb8fVi8CKoo;

    invoke-direct {v0}, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinSms$wmjnZGWG2i9D4JPqOb8fVi8CKoo;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinSms$wmjnZGWG2i9D4JPqOb8fVi8CKoo;->INSTANCE:Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinSms$wmjnZGWG2i9D4JPqOb8fVi8CKoo;

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

    invoke-static {p1}, Lcom/android/providers/telephony/bin/binmsg/BinSms;->lambda$restore$1(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
