.class public Lcom/android/providers/telephony/backup/BnRPreferences;
.super Ljava/lang/Object;
.source "BnRPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/backup/BnRPreferences$SCloud;,
        Lcom/android/providers/telephony/backup/BnRPreferences$Type;
    }
.end annotation


# static fields
.field static INVALID_PID:I = -0x1

.field private static final KEY_SET_BACKUP_FINISHED:[Ljava/lang/String;

.field private static final KEY_SET_CLASSIFICATION_THREAD_LIST:[Ljava/lang/String;

.field private static final KEY_SET_PIN_TO_TOP_THREAD_LIST:[Ljava/lang/String;

.field private static final KEY_SET_RESTORED_COUNT:[Ljava/lang/String;

.field private static final KEY_SET_RESTORED_THREAD_LIST:[Ljava/lang/String;

.field private static final KEY_SET_RESTORE_FINISHED:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "sms_backup_finished"

    const-string v1, "mms_backup_finished"

    const-string v2, "chat_backup_finished"

    const-string v3, "ft_backup_finished"

    .line 23
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/BnRPreferences;->KEY_SET_BACKUP_FINISHED:[Ljava/lang/String;

    const-string v0, "sms_restore_finished"

    const-string v1, "mms_restore_finished"

    const-string v2, "chat_restore_finished"

    const-string v3, "ft_restore_finished"

    .line 27
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/BnRPreferences;->KEY_SET_RESTORE_FINISHED:[Ljava/lang/String;

    const-string v0, "sms_restore_count"

    const-string v1, "mms_restore_count"

    const-string v2, "chat_restore_count"

    const-string v3, "ft_restore_count"

    .line 31
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/BnRPreferences;->KEY_SET_RESTORED_COUNT:[Ljava/lang/String;

    const-string v0, "sms_restore_thread_list"

    const-string v1, "mms_restore_thread_list"

    const-string v2, "chat_restore_thread_list"

    const-string v3, "ft_restore_thread_list"

    .line 35
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/BnRPreferences;->KEY_SET_RESTORED_THREAD_LIST:[Ljava/lang/String;

    const-string v0, "sms_classification_thread_list"

    const-string v1, "mms_classification_thread_list"

    const-string v2, "chat_classification_thread_list"

    const-string v3, "ft_classification_thread_list"

    .line 39
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/BnRPreferences;->KEY_SET_CLASSIFICATION_THREAD_LIST:[Ljava/lang/String;

    const-string v0, "sms_pin_to_top_thread_list"

    const-string v1, "mms_pin_to_top_thread_list"

    const-string v2, "chat_pin_to_top_thread_list"

    const-string v3, "ft_pin_to_top_thread_list"

    .line 43
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/backup/BnRPreferences;->KEY_SET_PIN_TO_TOP_THREAD_LIST:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences;->KEY_SET_BACKUP_FINISHED:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences;->KEY_SET_RESTORE_FINISHED:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences;->KEY_SET_RESTORED_COUNT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences;->KEY_SET_RESTORED_THREAD_LIST:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences;->KEY_SET_PIN_TO_TOP_THREAD_LIST:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/android/providers/telephony/backup/BnRPreferences;->KEY_SET_CLASSIFICATION_THREAD_LIST:[Ljava/lang/String;

    return-object v0
.end method
