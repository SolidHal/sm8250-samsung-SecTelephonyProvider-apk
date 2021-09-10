.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$zH0tcZfdILMLA9dnNR5K-maoqZw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$zH0tcZfdILMLA9dnNR5K-maoqZw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/backup/-$$Lambda$zH0tcZfdILMLA9dnNR5K-maoqZw;

    invoke-direct {v0}, Lcom/android/providers/telephony/backup/-$$Lambda$zH0tcZfdILMLA9dnNR5K-maoqZw;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/-$$Lambda$zH0tcZfdILMLA9dnNR5K-maoqZw;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$zH0tcZfdILMLA9dnNR5K-maoqZw;

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

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
