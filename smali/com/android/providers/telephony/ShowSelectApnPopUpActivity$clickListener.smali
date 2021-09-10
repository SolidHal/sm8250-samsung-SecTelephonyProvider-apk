.class public Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$clickListener;
.super Ljava/lang/Object;
.source "ShowSelectApnPopUpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "clickListener"
.end annotation


# instance fields
.field simSlot:I

.field final synthetic this$0:Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;I)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$clickListener;->this$0:Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput p2, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$clickListener;->simSlot:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$clickListener;->this$0:Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;

    iget p0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$clickListener;->simSlot:I

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->onClickPro(Landroid/content/DialogInterface;II)V

    return-void
.end method
