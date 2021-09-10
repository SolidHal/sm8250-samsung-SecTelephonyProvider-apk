.class Lcom/android/providers/telephony/backup/SCloudMmsBnRService$SCloudObserver;
.super Landroid/database/ContentObserver;
.source "SCloudMmsBnRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/SCloudMmsBnRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SCloudObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/backup/SCloudMmsBnRService;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;Landroid/os/Handler;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$SCloudObserver;->this$0:Lcom/android/providers/telephony/backup/SCloudMmsBnRService;

    .line 99
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SCloudObserver onChange uri : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TP/SCloudMmsBnRService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 106
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 107
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "transactionType"

    .line 108
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "type"

    .line 110
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "identifier"

    .line 111
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "uri"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "backup"

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$SCloudObserver;->this$0:Lcom/android/providers/telephony/backup/SCloudMmsBnRService;

    invoke-static {p0, v2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->access$000(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p1, "restore"

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "begin"

    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$SCloudObserver;->this$0:Lcom/android/providers/telephony/backup/SCloudMmsBnRService;

    invoke-static {p0, v2}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->access$100(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string p1, "end"

    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    iget-object p0, p0, Lcom/android/providers/telephony/backup/SCloudMmsBnRService$SCloudObserver;->this$0:Lcom/android/providers/telephony/backup/SCloudMmsBnRService;

    invoke-static {p0}, Lcom/android/providers/telephony/backup/SCloudMmsBnRService;->access$200(Lcom/android/providers/telephony/backup/SCloudMmsBnRService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    :goto_0
    return-void
.end method
