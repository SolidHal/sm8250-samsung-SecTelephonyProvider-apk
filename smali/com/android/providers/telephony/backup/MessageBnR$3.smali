.class Lcom/android/providers/telephony/backup/MessageBnR$3;
.super Ljava/lang/Object;
.source "MessageBnR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/backup/MessageBnR;->checkTempDatabase(Lcom/android/providers/telephony/backup/MessageBnR;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bnr:Lcom/android/providers/telephony/backup/MessageBnR;

.field final synthetic val$isInternalRestore:Z


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/backup/MessageBnR;Z)V
    .locals 0

    .line 2492
    iput-object p1, p0, Lcom/android/providers/telephony/backup/MessageBnR$3;->val$bnr:Lcom/android/providers/telephony/backup/MessageBnR;

    iput-boolean p2, p0, Lcom/android/providers/telephony/backup/MessageBnR$3;->val$isInternalRestore:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2495
    iget-object v0, p0, Lcom/android/providers/telephony/backup/MessageBnR$3;->val$bnr:Lcom/android/providers/telephony/backup/MessageBnR;

    iget-boolean p0, p0, Lcom/android/providers/telephony/backup/MessageBnR$3;->val$isInternalRestore:Z

    invoke-static {v0, p0}, Lcom/android/providers/telephony/backup/MessageBnR;->access$300(Lcom/android/providers/telephony/backup/MessageBnR;Z)V

    return-void
.end method
