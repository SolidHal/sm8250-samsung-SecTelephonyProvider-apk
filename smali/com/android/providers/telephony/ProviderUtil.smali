.class public Lcom/android/providers/telephony/ProviderUtil;
.super Ljava/lang/Object;
.source "ProviderUtil.java"


# direct methods
.method public static getCredentialEncryptedContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->isCredentialProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceEncryptedContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static isAccessRestricted(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    .line 50
    sget-boolean v0, Lcom/android/providers/telephony/seccommon/MessageFeature;->SEC_TP_TRANSACTION_CUSTOMIZE_KOREA:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    return v1

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/android/providers/telephony/secutil/SecProviderUtil;->isAllowAccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3e9

    if-eq p2, v0, :cond_2

    .line 62
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public static notifyIfNotDefaultSmsApp(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    .line 101
    invoke-static {p2}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "SmsProvider"

    if-eqz v0, :cond_1

    .line 102
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "notifyIfNotDefaultSmsApp - called from default sms app"

    .line 103
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 110
    invoke-static {p2, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultExternalTelephonyProviderChangedApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    .line 115
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.provider.action.EXTERNAL_PROVIDER_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x20000000

    .line 117
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 120
    invoke-static {v4, p1}, Lcom/android/providers/telephony/secutil/SecProviderUtil;->setExtraCallingPkg(Landroid/content/Intent;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 123
    invoke-virtual {v4, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 125
    :cond_3
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyIfNotDefaultSmsApp - called from "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", notifying"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_4
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static shouldRemoveCreator(Landroid/content/ContentValues;I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const-string p1, "creator"

    .line 87
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldSetCreator(Landroid/content/ContentValues;I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    :cond_0
    const-string p1, "creator"

    .line 74
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
