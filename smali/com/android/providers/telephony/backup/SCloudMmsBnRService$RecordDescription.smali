.class Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;
.super Ljava/lang/Object;
.source "SCloudMmsBnRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/SCloudMmsBnRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordDescription"
.end annotation


# instance fields
.field date:Ljava/lang/String;

.field private mHashCode:I

.field messageBox:Ljava/lang/String;

.field messageId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/telephony/backup/SCloudMmsBnRService;

.field threadId:Ljava/lang/String;

.field transactionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;Landroid/content/ContentValues;Z)V
    .locals 7

    .line 1052
    iput-object p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->this$0:Lcom/android/providers/telephony/backup/SCloudMmsBnRService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "date"

    .line 1053
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "msg_box"

    .line 1054
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "tr_id"

    .line 1055
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "m_id"

    .line 1056
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "thread_id"

    .line 1057
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "reserved"

    .line 1059
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v6

    :goto_0
    if-eqz p3, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    move v6, p1

    :cond_1
    move-object v0, p0

    .line 1062
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1065
    iput-object p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->this$0:Lcom/android/providers/telephony/backup/SCloudMmsBnRService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 1066
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1070
    iput-object p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->date:Ljava/lang/String;

    .line 1071
    iput-object p2, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->messageBox:Ljava/lang/String;

    .line 1072
    iput-object p3, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->transactionId:Ljava/lang/String;

    .line 1073
    iput-object p4, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->messageId:Ljava/lang/String;

    .line 1074
    iput-object p5, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->threadId:Ljava/lang/String;

    const-string v0, "%%"

    if-nez p4, :cond_1

    .line 1080
    iget-object p4, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->this$0:Lcom/android/providers/telephony/backup/SCloudMmsBnRService;

    invoke-static {p4}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->access$300(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;)Z

    move-result p4

    if-eqz p4, :cond_0

    if-eqz p6, :cond_0

    .line 1081
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 1083
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 1085
    :cond_1
    iget-object p6, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->this$0:Lcom/android/providers/telephony/backup/SCloudMmsBnRService;

    invoke-static {p6}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->access$300(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;)Z

    move-result p6

    if-nez p6, :cond_2

    .line 1086
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1089
    :cond_2
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->mHashCode:I

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 0

    .line 1094
    iget p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$RecordDescription;->mHashCode:I

    return p0
.end method
