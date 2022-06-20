.class Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mChildAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsFragment;


# direct methods
.method public static synthetic $r8$lambda$W6nWcKBe50TdUBhV21kQ199bXqs(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->lambda$getGroupView$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j8UpTwJMc0i4RU236wEI6-mv1pg(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->lambda$getGroupView$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$m-nAGIbqiJFbabVSAZCnAyfpnqQ(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->lambda$getViewForCertificate$2(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetKey(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getKey(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msaveState(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 2

    .line 277
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mChildAdapters:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;-><init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;Lcom/android/settings/TrustedCredentialsFragment$AdapterData-IA;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->load()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;-><init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    return-void
.end method

.method private getKey(I)Ljava/lang/String;
    .locals 2

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getUserIdByGroup(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUserIdByGroup(I)I
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->-$$Nest$fgetmCertHoldersByUserId(Lcom/android/settings/TrustedCredentialsFragment$AdapterData;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method private getViewForCertificate(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 424
    new-instance p3, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;-><init>(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder-IA;)V

    .line 425
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f06029c

    .line 426
    invoke-virtual {v1, v2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 427
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0d062f

    .line 429
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p3, v1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->-$$Nest$fputmSubjectPrimaryView(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;Landroid/widget/TextView;)V

    const v1, 0x7f0d0630

    .line 431
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p3, v1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->-$$Nest$fputmSubjectSecondaryView(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;Landroid/widget/TextView;)V

    const v1, 0x7f0d062e

    .line 432
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-static {p3, v1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->-$$Nest$fputmSwitch(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;Landroid/widget/Switch;)V

    .line 433
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->-$$Nest$fgetmSwitch(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object v1

    new-instance v2, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;

    move-object v3, p4

    move-object p4, p3

    move-object p3, v3

    .line 439
    :goto_0
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->-$$Nest$fgetmSubjectPrimaryView(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->-$$Nest$fgetmSubjectPrimary(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->-$$Nest$fgetmSubjectSecondaryView(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->-$$Nest$fgetmSubjectSecondary(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-boolean p2, p2, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    if-eqz p2, :cond_1

    .line 442
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->-$$Nest$fgetmSwitch(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p2

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->-$$Nest$fgetmDeleted(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 443
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->-$$Nest$fgetmSwitch(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsFragment;->-$$Nest$fgetmUserManager(Lcom/android/settings/TrustedCredentialsFragment;)Landroid/os/UserManager;

    move-result-object p0

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;->mProfileId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "no_config_credentials"

    invoke-virtual {p0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 446
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->-$$Nest$fgetmSwitch(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 447
    invoke-static {p3}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;->-$$Nest$fgetmSwitch(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$ViewHolder;)Landroid/widget/Switch;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-object p4
.end method

.method private synthetic lambda$getGroupView$0()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    const v0, 0x7f0405f7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGroupView$1()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    const v0, 0x7f0405f6

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getViewForCertificate$2(Landroid/view/View;)V
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment;->removeOrInstallCert(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V

    return-void
.end method

.method private saveState(Landroid/os/Bundle;)V
    .locals 4

    .line 453
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mChildAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 455
    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mChildAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;

    .line 456
    invoke-direct {p0, v1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;->-$$Nest$msaveState(Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public checkGroupExpandableAndStartWarningActivity(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 394
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result p0

    return p0
.end method

.method public checkGroupExpandableAndStartWarningActivity(IZ)Z
    .locals 3

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 401
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsFragment;->-$$Nest$fgetmUserManager(Lcom/android/settings/TrustedCredentialsFragment;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 404
    invoke-static {v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object p1

    .line 405
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v2

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-static {v1}, Lcom/android/settings/TrustedCredentialsFragment;->-$$Nest$fgetmUserManager(Lcom/android/settings/TrustedCredentialsFragment;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 409
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 410
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 412
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-static {p0, v0}, Lcom/android/settings/TrustedCredentialsFragment;->-$$Nest$mstartConfirmCredential(Lcom/android/settings/TrustedCredentialsFragment;I)Z

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method createChildAdapter(I)Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;
    .locals 3

    .line 388
    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/android/settings/TrustedCredentialsFragment$ChildAdapter;-><init>(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;ILcom/android/settings/TrustedCredentialsFragment$ChildAdapter-IA;)V

    .line 389
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mChildAdapters:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getChild(II)Lcom/android/settings/TrustedCredentialsFragment$CertHolder;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->-$$Nest$fgetmCertHoldersByUserId(Lcom/android/settings/TrustedCredentialsFragment$AdapterData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getUserIdByGroup(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    return-object p0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object p0

    return-object p0
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p0, p2

    return-wide p0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    invoke-static {p2}, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->-$$Nest$fgetmTab(Lcom/android/settings/TrustedCredentialsFragment$AdapterData;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getViewForCertificate(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildrenCount(I)I
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->-$$Nest$fgetmCertHoldersByUserId(Lcom/android/settings/TrustedCredentialsFragment$AdapterData;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    .line 291
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGroup(I)Landroid/os/UserHandle;
    .locals 1

    .line 298
    new-instance v0, Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->-$$Nest$fgetmCertHoldersByUserId(Lcom/android/settings/TrustedCredentialsFragment$AdapterData;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getGroup(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public getGroupCount()I
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    invoke-static {p0}, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->-$$Nest$fgetmCertHoldersByUserId(Lcom/android/settings/TrustedCredentialsFragment$AdapterData;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public getGroupId(I)J
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getUserIdByGroup(I)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p3, :cond_0

    .line 334
    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "layout_inflater"

    .line 335
    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 336
    invoke-static {p2, p4}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    const p2, 0x1020016

    .line 339
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getUserInfoByGroup(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 341
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsFragment;->-$$Nest$fgetmDevicePolicyManager(Lcom/android/settings/TrustedCredentialsFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;)V

    const-string p0, "Settings.WORK_CATEGORY_HEADER"

    invoke-virtual {p1, p0, p4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 344
    :cond_1
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsFragment;->-$$Nest$fgetmDevicePolicyManager(Lcom/android/settings/TrustedCredentialsFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance p4, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;)V

    const-string p0, "Settings.PERSONAL_CATEGORY_HEADER"

    invoke-virtual {p1, p0, p4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p0, 0x6

    .line 349
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextAlignment(I)V

    return-object p3
.end method

.method public getUserInfoByGroup(I)Landroid/content/pm/UserInfo;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsFragment;->-$$Nest$fgetmUserManager(Lcom/android/settings/TrustedCredentialsFragment;)Landroid/os/UserManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getUserIdByGroup(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public load()V
    .locals 1

    .line 380
    new-instance v0, Lcom/android/settings/TrustedCredentialsFragment$AdapterData$AliasLoader;

    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsFragment$AdapterData$AliasLoader;-><init>(Lcom/android/settings/TrustedCredentialsFragment$AdapterData;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 369
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->this$0:Lcom/android/settings/TrustedCredentialsFragment;

    invoke-virtual {p0, p3, p4}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsFragment$CertHolder;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/TrustedCredentialsFragment;->-$$Nest$mshowCertDialog(Lcom/android/settings/TrustedCredentialsFragment;Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    .line 376
    invoke-virtual {p0, p3}, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public remove(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/android/settings/TrustedCredentialsFragment$GroupAdapter;->mData:Lcom/android/settings/TrustedCredentialsFragment$AdapterData;

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsFragment$AdapterData;->remove(Lcom/android/settings/TrustedCredentialsFragment$CertHolder;)V

    return-void
.end method
