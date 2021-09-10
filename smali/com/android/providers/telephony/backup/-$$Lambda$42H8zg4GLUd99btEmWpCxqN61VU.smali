.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$42H8zg4GLUd99btEmWpCxqN61VU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$42H8zg4GLUd99btEmWpCxqN61VU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/backup/-$$Lambda$42H8zg4GLUd99btEmWpCxqN61VU;

    invoke-direct {v0}, Lcom/android/providers/telephony/backup/-$$Lambda$42H8zg4GLUd99btEmWpCxqN61VU;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/-$$Lambda$42H8zg4GLUd99btEmWpCxqN61VU;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$42H8zg4GLUd99btEmWpCxqN61VU;

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

    check-cast p1, [Ljava/io/File;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
