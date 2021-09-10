.class public interface abstract Lcom/android/providers/telephony/backup/IBNRClient;
.super Ljava/lang/Object;
.source "IBNRClient.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/backup/record/IRecordClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;
    }
.end annotation


# virtual methods
.method public abstract synthetic addKeyAndDate(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z
.end method

.method public abstract synthetic backupCompleted(Landroid/content/Context;)V
.end method

.method public abstract synthetic backupFailed(Landroid/content/Context;)V
.end method

.method public abstract synthetic backupRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract getSourceKey()Ljava/lang/String;
.end method

.method public abstract synthetic initialize(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient$ResultListener;)V
.end method

.method public abstract synthetic isBackupPrepare(Landroid/content/Context;)Z
.end method

.method public abstract synthetic isRestorePrepare(Landroid/content/Context;Landroid/os/Bundle;)Z
.end method

.method public abstract synthetic restoreCompleted(Landroid/content/Context;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract restoreCompleted(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract synthetic restoreFailed(Landroid/content/Context;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract restoreFailed(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/providers/telephony/backup/IBNRClient$ThreadUpdateListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract synthetic restoreRecord(Landroid/content/Context;Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;JLcom/samsung/android/scloud/oem/lib/backup/record/RecordClientHelper;)Z
.end method
