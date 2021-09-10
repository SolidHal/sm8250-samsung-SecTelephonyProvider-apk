.class public Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;
.super Ljava/lang/Object;
.source "CategoriesBnR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/CategoriesBnR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadInfo"
.end annotation


# instance fields
.field categoriesInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field conversationType:I

.field recipients:Ljava/lang/String;

.field sessionId:Ljava/lang/String;

.field threadId:J

.field threadType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "xms"

    .line 38
    iput-object v0, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->threadType:Ljava/lang/String;

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->recipients:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->sessionId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->conversationType:I

    return-void
.end method


# virtual methods
.method getCategoriesInfo()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->categoriesInfo:Ljava/util/ArrayList;

    return-object p0
.end method

.method getConversationType()I
    .locals 0

    .line 103
    iget p0, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->conversationType:I

    return p0
.end method

.method getRecipients()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->recipients:Ljava/lang/String;

    return-object p0
.end method

.method getSessionId()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method getThreadId()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->threadId:J

    return-wide v0
.end method

.method getThreadType()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->threadType:Ljava/lang/String;

    return-object p0
.end method

.method setCategoriesInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/providers/telephony/backup/CategoriesBnR$CategoryInfo;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->categoriesInfo:Ljava/util/ArrayList;

    return-void
.end method

.method setConversationType(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->conversationType:I

    return-void
.end method

.method setImType(I)V
    .locals 0

    return-void
.end method

.method setRecipients(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->recipients:Ljava/lang/String;

    return-void
.end method

.method setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->sessionId:Ljava/lang/String;

    return-void
.end method

.method setSessionId2(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method setThreadId(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->threadId:J

    return-void
.end method

.method setThreadType(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/providers/telephony/backup/CategoriesBnR$ThreadInfo;->threadType:Ljava/lang/String;

    return-void
.end method
