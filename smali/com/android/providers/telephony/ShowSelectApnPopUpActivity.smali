.class public Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;
.super Landroid/app/Activity;
.source "ShowSelectApnPopUpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$customFormatter;,
        Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$dismissListener;,
        Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$clickListener;
    }
.end annotation


# static fields
.field static LOG_DIR:Ljava/lang/String;

.field static LOG_PATH:Ljava/lang/String;

.field static fh:Ljava/util/logging/FileHandler;

.field private static localRuntime:Ljava/lang/Runtime;

.field static logger:Ljava/util/logging/Logger;

.field private static mSimSlotNum:I


# instance fields
.field private mAlertDialog:[Landroid/app/AlertDialog;

.field private mIndex:I

.field private mIsShowings:[Z

.field nwknames:[Ljava/lang/String;

.field sec_theme:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mSimSlotNum:I

    const-string v0, "ShowSelectApnPopUp"

    .line 72
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->fh:Ljava/util/logging/FileHandler;

    const-string v0, "/data/user_de/0/com.android.providers.telephony/files/mobiledata_apn_show.dat"

    .line 74
    sput-object v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->LOG_PATH:Ljava/lang/String;

    const-string v0, "/data/log/err"

    .line 75
    sput-object v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->LOG_DIR:Ljava/lang/String;

    .line 76
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->localRuntime:Ljava/lang/Runtime;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIndex:I

    const v0, 0x10302d2

    .line 66
    iput v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->sec_theme:I

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->nwknames:[Ljava/lang/String;

    .line 69
    sget v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mSimSlotNum:I

    new-array v1, v0, [Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mAlertDialog:[Landroid/app/AlertDialog;

    .line 193
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIsShowings:[Z

    return-void
.end method

.method static changePermission(Ljava/lang/String;)Z
    .locals 4

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changePermission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "Make dir is failed"

    .line 330
    invoke-static {p0}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    return v1

    .line 334
    :cond_0
    :try_start_0
    sget-object p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->localRuntime:Ljava/lang/Runtime;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 770 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 336
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 4

    .line 86
    :try_start_0
    sget-object v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "D/ShowSelectApnPopUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 4

    .line 94
    :try_start_0
    sget-object v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E/ShowSelectApnPopUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private show(I)V
    .locals 9

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show : slotId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    .line 145
    new-instance v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$clickListener;

    invoke-direct {v0, p0, p1}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$clickListener;-><init>(Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;I)V

    .line 147
    new-instance v1, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$dismissListener;

    invoke-direct {v1, p0, p1}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$dismissListener;-><init>(Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;I)V

    .line 150
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget v3, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->sec_theme:I

    invoke-direct {v2, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b0009

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "XSP"

    .line 156
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " "

    const/4 v8, 0x1

    if-nez v6, :cond_2

    const-string v6, "STH"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "MM1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "SIN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    sget v3, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mSimSlotNum:I

    if-le v3, v8, :cond_1

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    :cond_1
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 157
    :cond_2
    :goto_0
    sget v4, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mSimSlotNum:I

    if-le v4, v8, :cond_3

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    :cond_3
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    const/4 v3, 0x0

    .line 167
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 168
    iget-object v4, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->nwknames:[Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v4, 0x104000a

    .line 169
    invoke-virtual {v2, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    .line 170
    invoke-virtual {v2, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    iget-object v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mAlertDialog:[Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    aput-object v2, v0, p1

    .line 173
    iget-object v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mAlertDialog:[Landroid/app/AlertDialog;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x50

    .line 174
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 175
    iget-object v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mAlertDialog:[Landroid/app/AlertDialog;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mAlertDialog:[Landroid/app/AlertDialog;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mAlertDialog:[Landroid/app/AlertDialog;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 178
    iget-object p0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mAlertDialog:[Landroid/app/AlertDialog;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static startProcessLog()V
    .locals 7

    .line 270
    sget-object v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->fh:Ljava/util/logging/FileHandler;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Ljava/util/logging/FileHandler;->close()V

    :cond_0
    const-string v0, "ShowSelectApnPopUp"

    .line 273
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->logger:Ljava/util/logging/Logger;

    .line 274
    sget-object v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->LOG_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->changePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    sget-object v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->LOG_PATH:Ljava/lang/String;

    .line 276
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 279
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->LOG_PATH:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 281
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 284
    :goto_0
    :try_start_1
    new-instance v1, Ljava/util/logging/FileHandler;

    invoke-direct {v1, v0, v4}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->fh:Ljava/util/logging/FileHandler;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 288
    :goto_1
    new-instance v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$customFormatter;

    invoke-direct {v0, v3}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$customFormatter;-><init>(Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$1;)V

    .line 289
    sget-object v1, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->fh:Ljava/util/logging/FileHandler;

    if-eqz v1, :cond_4

    .line 290
    sget-object v2, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 292
    sget-object v1, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->fh:Ljava/util/logging/FileHandler;

    invoke-virtual {v1, v0}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    goto :goto_2

    .line 297
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Fail to make log file"

    .line 298
    invoke-static {v1}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->loge(Ljava/lang/String;)V

    .line 299
    :cond_2
    new-instance v1, Ljava/util/logging/FileHandler;

    invoke-direct {v1, v0, v4}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->fh:Ljava/util/logging/FileHandler;

    .line 300
    new-instance v1, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$customFormatter;

    invoke-direct {v1, v3}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$customFormatter;-><init>(Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$1;)V

    .line 301
    sget-object v2, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->fh:Ljava/util/logging/FileHandler;

    if-eqz v2, :cond_3

    .line 302
    sget-object v2, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->logger:Ljava/util/logging/Logger;

    sget-object v3, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->fh:Ljava/util/logging/FileHandler;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 304
    sget-object v2, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->fh:Ljava/util/logging/FileHandler;

    invoke-virtual {v2, v1}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 307
    :cond_3
    sget-object v1, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->localRuntime:Ljava/lang/Runtime;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 660 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "Make log file exception : IOException"

    .line 313
    invoke-static {v0}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->loge(Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    const-string v0, "Make log file exception : SecurtyExcetion"

    .line 310
    invoke-static {v0}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->loge(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static declared-synchronized stopProcessLog()V
    .locals 2

    const-class v0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;

    monitor-enter v0

    .line 320
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->fh:Ljava/util/logging/FileHandler;

    if-eqz v1, :cond_0

    .line 321
    sget-object v1, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->fh:Ljava/util/logging/FileHandler;

    invoke-virtual {v1}, Ljava/util/logging/FileHandler;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public broadcastToReceiver(II)V
    .locals 3

    const-string p1, "sending broadcast: com.samsung.android.intent.action.NWKNAME_SELECT_DONE"

    .line 245
    invoke-static {p1}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    .line 246
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.NWKNAME_SELECT_DONE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x1000020

    .line 247
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    iget v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->nwknames:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 251
    :goto_0
    iget v1, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIndex:I

    const-string v2, "selectNwknameIndex"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "selectedNwkname"

    .line 252
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "slotId"

    .line 253
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NWKNAME_SELECT_DONE info : selectNwknameIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", selectedNwkname : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", simSlot : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClickPro(Landroid/content/DialogInterface;II)V
    .locals 4

    .line 196
    invoke-static {}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->startProcessLog()V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClickPro(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v1, ", slotId:"

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog Negative Button Click, slotId:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    .line 200
    iput v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIndex:I

    .line 202
    invoke-virtual {p0, v0, p3}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->broadcastToReceiver(II)V

    .line 203
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Dialog Negatvie Button Click "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 206
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dialog Positive Button Click "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIndex:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    .line 210
    iget p2, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIndex:I

    invoke-virtual {p0, p2, p3}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->broadcastToReceiver(II)V

    .line 211
    iput v2, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIndex:I

    .line 212
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 215
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 217
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Select Dialog Index : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    .line 219
    iput p2, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIndex:I

    .line 220
    invoke-static {}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->stopProcessLog()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 134
    sget p1, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mSimSlotNum:I

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mAlertDialog:[Landroid/app/AlertDialog;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configurationChanged. dismiss and show. simSlot : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mAlertDialog:[Landroid/app/AlertDialog;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 138
    iget-object v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mAlertDialog:[Landroid/app/AlertDialog;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-static {}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->startProcessLog()V

    const-string p1, "onCreate"

    .line 108
    invoke-static {p1}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const/high16 p1, 0x7f080000

    .line 111
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "nwkname is null. Stop to display sim profile popup."

    .line 115
    invoke-static {p0}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "nwkname"

    .line 118
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->nwknames:[Ljava/lang/String;

    const-string v1, "slotID"

    .line 119
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 120
    iget-object v1, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->nwknames:[Ljava/lang/String;

    array-length v2, v1

    if-lez v2, :cond_2

    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 121
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nwkname item("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show slotID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->show(I)V

    .line 127
    :cond_2
    invoke-static {}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->stopProcessLog()V

    return-void
.end method

.method public onDismissPro(I)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIsShowings:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "No Network Selected : Insert All Network Apns"

    .line 236
    invoke-static {v0}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->log(Ljava/lang/String;)V

    .line 238
    iput v1, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIndex:I

    .line 240
    :cond_0
    iget-object p0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->mIsShowings:[Z

    aget-boolean v0, p0, p1

    if-eqz v0, :cond_1

    .line 241
    aput-boolean v1, p0, p1

    :cond_1
    return-void
.end method
