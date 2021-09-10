.class Lcom/android/providers/telephony/backup/MessageBnR$1;
.super Ljava/lang/Object;
.source "MessageBnR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/backup/MessageBnR;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/backup/MessageBnR;

.field final synthetic val$savePath:Ljava/lang/String;

.field final synthetic val$securityLevel:I

.field final synthetic val$sessionKey:Ljava/lang/String;

.field final synthetic val$sessiontime:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/backup/MessageBnR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$1;->this$0:Lcom/android/providers/telephony/backup/MessageBnR;

    iput-object p2, p0, Lcom/android/providers/telephony/backup/MessageBnR$1;->val$savePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/providers/telephony/backup/MessageBnR$1;->val$sessionKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/providers/telephony/backup/MessageBnR$1;->val$source:Ljava/lang/String;

    iput p5, p0, Lcom/android/providers/telephony/backup/MessageBnR$1;->val$securityLevel:I

    iput-object p6, p0, Lcom/android/providers/telephony/backup/MessageBnR$1;->val$sessiontime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 133
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$1;->this$0:Lcom/android/providers/telephony/backup/MessageBnR;

    iget-object v1, p0, Lcom/android/providers/telephony/backup/MessageBnR$1;->val$savePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/backup/MessageBnR$1;->val$sessionKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/telephony/backup/MessageBnR$1;->val$source:Ljava/lang/String;

    iget v4, p0, Lcom/android/providers/telephony/backup/MessageBnR$1;->val$securityLevel:I

    iget-object v5, p0, Lcom/android/providers/telephony/backup/MessageBnR$1;->val$sessiontime:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/providers/telephony/backup/MessageBnR;->access$000(Lcom/android/providers/telephony/backup/MessageBnR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
