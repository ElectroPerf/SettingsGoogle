.class public final synthetic Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/BubbleWarningDialogFragment;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/BubbleWarningDialogFragment;

    iget-object v1, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/android/settings/notification/app/BubbleWarningDialogFragment$$ExternalSyntheticLambda0;->f$3:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/settings/notification/app/BubbleWarningDialogFragment;->$r8$lambda$U1jQC_KcHKM7ZAmnDfSA3JYRCWA(Lcom/android/settings/notification/app/BubbleWarningDialogFragment;Ljava/lang/String;IILandroid/content/DialogInterface;I)V

    return-void
.end method
