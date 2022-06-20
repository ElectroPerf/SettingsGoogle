.class public final Lcom/android/settings/password/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method private constructor <init>(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 117
    iput-object p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 118
    iput-object p3, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    .line 119
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/android/settings/password/ChooseLockSettingsHelper-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private copyInternalExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    .line 407
    invoke-static {p1, p2}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const-string/jumbo p0, "theme"

    .line 408
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2

    const-string p0, "android.intent.extra.INTENT"

    .line 388
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string p0, "android.intent.extra.TASK_ID"

    const/4 v1, -0x1

    .line 392
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 394
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    if-nez v0, :cond_2

    if-eq p1, v1, :cond_3

    :cond_2
    const/high16 p0, 0x800000

    .line 401
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x40000000    # 2.0f

    .line 402
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZILjava/lang/CharSequence;ZZZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "*>;ZZZI",
            "Ljava/lang/CharSequence;",
            "ZZZ)Z"
        }
    .end annotation

    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.ConfirmCredentials.title"

    .line 345
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.header"

    .line 346
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.details"

    .line 347
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.darkTheme"

    const/4 p3, 0x0

    .line 349
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.showCancelButton"

    .line 350
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.showWhenLocked"

    .line 351
    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.useFadeAnimation"

    .line 352
    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p2, "return_credentials"

    .line 353
    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "force_verify"

    .line 354
    invoke-virtual {v0, p2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "android.intent.extra.USER_ID"

    .line 355
    invoke-virtual {v0, p2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    .line 356
    invoke-virtual {v0, p2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p2, "foreground_only"

    .line 357
    invoke-virtual {v0, p2, p12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "allow_any_user"

    .line 358
    invoke-virtual {v0, p2, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p2, "request_gk_pw_handle"

    .line 359
    invoke-virtual {v0, p2, p13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 362
    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.android.settings"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "page_transition_type"

    const/4 p3, 0x1

    .line 363
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    goto :goto_0

    .line 367
    :cond_0
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 368
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyInternalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    if-eqz p7, :cond_2

    const/high16 p1, 0x2000000

    .line 370
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 371
    invoke-direct {p0, p2, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 372
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_1

    .line 373
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 375
    :cond_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 378
    :cond_2
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_3

    .line 379
    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 381
    :cond_3
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return p3
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZILjava/lang/CharSequence;ZZZ)Z
    .locals 14

    move-object v0, p0

    .line 310
    iget-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    move/from16 v9, p8

    invoke-virtual {v1, v9}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    .line 313
    iget-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_3

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x30000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x50000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x80000

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_0
    if-nez p5, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    .line 331
    :cond_1
    const-class v1, Lcom/android/settings/password/ConfirmLockPassword;

    goto :goto_1

    .line 330
    :cond_2
    :goto_0
    const-class v1, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    :goto_1
    move-object v5, v1

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 328
    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZILjava/lang/CharSequence;ZZZ)Z

    move-result v0

    goto :goto_4

    :cond_3
    if-nez p5, :cond_5

    if-eqz p7, :cond_4

    goto :goto_2

    .line 318
    :cond_4
    const-class v1, Lcom/android/settings/password/ConfirmLockPattern;

    goto :goto_3

    .line 317
    :cond_5
    :goto_2
    const-class v1, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    :goto_3
    move-object v5, v1

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 315
    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZILjava/lang/CharSequence;ZZZ)Z

    move-result v0

    :goto_4
    return v0
.end method


# virtual methods
.method public launch()Z
    .locals 14

    .line 298
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmRequestCode(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)I

    move-result v2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmTitle(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmHeader(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmDescription(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmReturnCredentials(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z

    move-result v6

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmExternal(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z

    move-result v7

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmForceVerifyPath(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z

    move-result v8

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)I

    move-result v9

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmAlternateButton(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmAllowAnyUserId(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z

    move-result v11

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmForegroundOnly(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z

    move-result v12

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-boolean v13, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZILjava/lang/CharSequence;ZZZ)Z

    move-result p0

    return p0
.end method
