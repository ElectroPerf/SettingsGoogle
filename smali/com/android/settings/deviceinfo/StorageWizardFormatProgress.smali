.class public Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SilentObserver;,
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;
    }
.end annotation


# instance fields
.field private mFormatPrivate:Z

.field private mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFormatPrivate(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 52
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f060236

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setContentView(I)V

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setKeepScreenOn(Z)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "format_private"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    const v0, 0x7f041403

    new-array v1, p1, [Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setHeaderText(I[Ljava/lang/CharSequence;)V

    const v0, 0x7f041402

    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBodyText(I[Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBackButtonVisibility(I)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setNextButtonVisibility(I)V

    .line 65
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    if-nez p1, :cond_1

    .line 67
    new-instance p1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    .line 68
    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    .line 69
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    :goto_0
    return-void
.end method

.method public onFormatFinished()V
    .locals 3

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "format_slow"

    const/4 v2, 0x0

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->startActivity(Landroid/content/Intent;)V

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method public onFormatFinishedSlow()V
    .locals 3

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "format_slow"

    const/4 v2, 0x1

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->startActivity(Landroid/content/Intent;)V

    .line 213
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    return-object p0
.end method