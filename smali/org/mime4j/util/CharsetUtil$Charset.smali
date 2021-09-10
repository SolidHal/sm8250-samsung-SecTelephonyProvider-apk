.class Lorg/mime4j/util/CharsetUtil$Charset;
.super Ljava/lang/Object;
.source "CharsetUtil.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mime4j/util/CharsetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Charset"
.end annotation


# instance fields
.field private aliases:[Ljava/lang/String;

.field private canonical:Ljava/lang/String;

.field private mime:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 787
    iput-object v0, p0, Lorg/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    .line 788
    iput-object v0, p0, Lorg/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;

    .line 789
    iput-object v0, p0, Lorg/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    .line 792
    iput-object p1, p0, Lorg/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    .line 793
    iput-object p2, p0, Lorg/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;

    .line 794
    iput-object p3, p0, Lorg/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V
    .locals 0

    .line 786
    invoke-direct {p0, p1, p2, p3}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;
    .locals 0

    .line 786
    iget-object p0, p0, Lorg/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;
    .locals 0

    .line 786
    iget-object p0, p0, Lorg/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lorg/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;
    .locals 0

    .line 786
    iget-object p0, p0, Lorg/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 798
    check-cast p1, Lorg/mime4j/util/CharsetUtil$Charset;

    .line 799
    iget-object p0, p0, Lorg/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    iget-object p1, p1, Lorg/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
