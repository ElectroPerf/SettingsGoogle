.class public Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AdvancedPowerUsageDetail.java"

# interfaces
.implements Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$AppButtonsDialogListener;
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;
    }
.end annotation


# instance fields
.field private mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

.field mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

.field mBackgroundPreference:Landroidx/preference/Preference;

.field mBackupManager:Landroid/app/backup/BackupManager;

.field mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mEnableTriState:Z

.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field mForegroundPreference:Landroidx/preference/Preference;

.field mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field mOptimizationMode:I

.field mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field mRestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field mState:Lcom/android/settingslib/applications/ApplicationsState;

.field mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;


# direct methods
.method public static synthetic $r8$lambda$ivoq80ILZgB94hn5zCXy4f9AoFc(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->lambda$initPreferenceForTriState$0(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mEnableTriState:Z

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizationMode:I

    return-void
.end method

.method private getAppActiveSummaryWithSlotTime(JJJLjava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x2

    const-wide/32 v2, 0xea60

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    cmp-long p1, p3, v2

    if-gez p1, :cond_0

    const p1, 0x7f0403a6

    .line 649
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/CharSequence;

    aput-object p7, p1, v5

    .line 648
    invoke-static {p0, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f0403a7

    .line 651
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 653
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 652
    invoke-static {p0, p3, p4, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v5

    aput-object p7, p2, v4

    .line 651
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    cmp-long p1, p5, v2

    if-gez p1, :cond_2

    const p1, 0x7f040432

    .line 660
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/CharSequence;

    aput-object p7, p1, v5

    .line 659
    invoke-static {p0, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p1, p3, v2

    if-gez p1, :cond_4

    cmp-long p1, p3, v0

    if-nez p1, :cond_3

    const p1, 0x7f040433

    goto :goto_1

    :cond_3
    const p1, 0x7f04042f

    .line 664
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 668
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p5

    .line 667
    invoke-static {p0, p3, p4, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v5

    aput-object p7, p2, v4

    .line 663
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f04042a

    .line 675
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 677
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double p5, p5

    .line 676
    invoke-static {v1, p5, p6, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p5

    aput-object p5, v0, v5

    .line 682
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 681
    invoke-static {p0, p3, p4, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, v4

    aput-object p7, v0, p2

    .line 674
    invoke-static {p1, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getAppActiveTime(Landroid/os/Bundle;)Ljava/lang/CharSequence;
    .locals 11

    const-string v0, "extra_foreground_time"

    .line 525
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "extra_background_time"

    .line 526
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "extra_power_usage_amount"

    .line 527
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "extra_uid"

    const/4 v6, 0x0

    .line 528
    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v6, "extra_slot_time"

    const/4 v7, 0x0

    .line 529
    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    add-long v9, v2, v4

    .line 532
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 533
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isChartGraphEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 535
    invoke-static {v1}, Lcom/android/settings/fuelgauge/BatteryEntry;->isSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v7

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v1, v9, v6

    if-nez v1, :cond_3

    if-lez v0, :cond_1

    const v0, 0x7f04043c

    goto :goto_0

    :cond_1
    const v0, 0x7f0403d2

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const v0, 0x7f0403d1

    .line 541
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2

    :cond_3
    if-nez v8, :cond_5

    if-eqz p1, :cond_4

    move-object v1, p0

    move-wide v6, v9

    .line 546
    invoke-direct/range {v1 .. v7}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppPast24HrActiveSummary(JJJ)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2

    :cond_4
    move-object v1, p0

    move-wide v6, v9

    .line 547
    invoke-direct/range {v1 .. v7}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppFullChargeActiveSummary(JJJ)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2

    :cond_5
    move-object v1, p0

    move-wide v6, v9

    .line 551
    invoke-direct/range {v1 .. v8}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppActiveSummaryWithSlotTime(JJJLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private getAppFullChargeActiveSummary(JJJ)Ljava/lang/CharSequence;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    if-nez p1, :cond_1

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    cmp-long p1, p3, v2

    if-gez p1, :cond_0

    const p1, 0x7f0403a4

    .line 562
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f0403a2

    .line 563
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 565
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 564
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v4

    .line 563
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    cmp-long p1, p5, v2

    if-gez p1, :cond_2

    const p1, 0x7f040430

    .line 571
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p1, p3, v2

    if-gez p1, :cond_4

    cmp-long p1, p3, v0

    if-nez p1, :cond_3

    const p1, 0x7f04042b

    goto :goto_1

    :cond_3
    const p1, 0x7f04042d

    .line 575
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 579
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p5

    .line 578
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v4

    .line 574
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f040428

    .line 586
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 588
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double p5, p5

    .line 587
    invoke-static {v1, p5, p6, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p5

    aput-object p5, v0, v4

    .line 593
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 592
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, p2

    .line 585
    invoke-static {p1, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getAppPast24HrActiveSummary(JJJ)Ljava/lang/CharSequence;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    if-nez p1, :cond_1

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    cmp-long p1, p3, v2

    if-gez p1, :cond_0

    const p1, 0x7f0403a5

    .line 605
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f0403a3

    .line 606
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 608
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 607
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v4

    .line 606
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    cmp-long p1, p5, v2

    if-gez p1, :cond_2

    const p1, 0x7f040431

    .line 614
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p1, p3, v2

    if-gez p1, :cond_4

    cmp-long p1, p3, v0

    if-nez p1, :cond_3

    const p1, 0x7f04042c

    goto :goto_1

    :cond_3
    const p1, 0x7f04042e

    .line 618
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 622
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p5

    .line 621
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v4

    .line 617
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f040429

    .line 629
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 631
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double p5, p5

    .line 630
    invoke-static {v1, p5, p6, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p5

    aput-object p5, v0, v4

    .line 636
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 635
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, p2

    .line 628
    invoke-static {p1, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedPreference()I
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 517
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initPreferenceForTriState$0(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 388
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private logMetricCategory(I)V
    .locals 7

    .line 470
    iget v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizationMode:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x6f1

    goto :goto_0

    :cond_2
    const/16 v0, 0x6f0

    goto :goto_0

    :cond_3
    const/16 v0, 0x6f2

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_5

    .line 488
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/16 v2, 0x761

    const/16 v4, 0x761

    .line 494
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "none"

    :cond_4
    move-object v5, p1

    .line 495
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "extra_power_usage_amount"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 490
    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    :cond_5
    return-void
.end method

.method private onCreateForTriState(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "unrestricted_pref"

    .line 500
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const-string v0, "optimized_pref"

    .line 501
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const-string/jumbo v0, "restricted_pref"

    .line 502
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const-string v0, "app_usage_footer_preference"

    .line 503
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 504
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setOnClickListener(Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;)V

    .line 505
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setOnClickListener(Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;)V

    .line 506
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setOnClickListener(Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;)V

    .line 508
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    .line 509
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    return-void
.end method

.method private static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)V
    .locals 4

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmPackageName(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_package_name"

    if-nez v1, :cond_0

    .line 188
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmAppLabel(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "extra_label"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmIconId(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result v1

    const-string v3, "extra_icon_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_0
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmPackageName(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmUid(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result v1

    const-string v2, "extra_uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmBackgroundTimeMs(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)J

    move-result-wide v1

    const-string v3, "extra_background_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmForegroundTimeMs(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)J

    move-result-wide v1

    const-string v3, "extra_foreground_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 199
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmSlotInformation(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_slot_time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmUsagePercent(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_power_usage_percent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmConsumedPower(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result v1

    const-string v2, "extra_power_usage_amount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmIsUserEntry(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    goto :goto_1

    .line 203
    :cond_1
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmUid(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 205
    :goto_1
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 206
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v1, 0x7f0403ba

    .line 207
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 209
    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/BatteryDiffEntry;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    .line 147
    iget-object v0, p2, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    .line 148
    new-instance v1, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;-><init>(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs-IA;)V

    .line 150
    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmUsagePercent(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmPackageName(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmAppLabel(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)V

    .line 153
    invoke-static {v1, p5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmSlotInformation(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)V

    .line 154
    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    long-to-int p3, v2

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmUid(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)V

    .line 155
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getAppIconId()I

    move-result p3

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmIconId(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)V

    .line 156
    iget-wide v2, p2, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mConsumePower:D

    double-to-int p3, v2

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmConsumedPower(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)V

    const-wide/16 v2, 0x0

    if-eqz p4, :cond_0

    .line 158
    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    invoke-static {v1, v4, v5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmForegroundTimeMs(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)V

    if-eqz p4, :cond_1

    .line 160
    iget-wide v2, p2, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    :cond_1
    invoke-static {v1, v2, v3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmBackgroundTimeMs(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)V

    .line 161
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->isUserEntry()Z

    move-result p2

    invoke-static {v1, p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmIsUserEntry(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Z)V

    .line 162
    invoke-static {p0, p1, v1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;Z)V
    .locals 5

    .line 169
    new-instance v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;-><init>(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs-IA;)V

    .line 171
    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmUsagePercent(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getDefaultPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmPackageName(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmAppLabel(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getUid()I

    move-result p3

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmUid(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)V

    .line 175
    iget p3, p2, Lcom/android/settings/fuelgauge/BatteryEntry;->mIconId:I

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmIconId(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)V

    .line 176
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getConsumedPower()D

    move-result-wide v1

    double-to-int p3, v1

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmConsumedPower(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)V

    const-wide/16 v1, 0x0

    if-eqz p4, :cond_0

    .line 177
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getTimeInForegroundMs()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-static {v0, v3, v4}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmForegroundTimeMs(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)V

    if-eqz p4, :cond_1

    .line 178
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->getTimeInBackgroundMs()J

    move-result-wide v1

    :cond_1
    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmBackgroundTimeMs(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)V

    .line 179
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatteryEntry;->isUserEntry()Z

    move-result p2

    invoke-static {v0, p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmIsUserEntry(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Z)V

    .line 180
    invoke-static {p0, p1, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/lang/String;)V
    .locals 5

    .line 224
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "extra_package_name"

    .line 226
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 227
    invoke-static {v2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "extra_power_usage_percent"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "extra_uid"

    .line 229
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "AdvancedPowerDetail"

    invoke-static {v2, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    :goto_0
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 235
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const p2, 0x7f0403ba

    .line 236
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 238
    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private updatePreferenceState(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;)V
    .locals 0

    .line 466
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_uid"

    const/4 v3, 0x0

    .line 413
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "extra_package_name"

    .line 414
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 416
    new-instance v3, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 417
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, v3

    move-object v6, p0

    move-object v8, v1

    invoke-direct/range {v4 .. v11}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState;II)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 419
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mEnableTriState:Z

    if-eqz v3, :cond_0

    .line 421
    new-instance p0, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance p0, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance p0, Lcom/android/settings/fuelgauge/RestrictedPreferenceController;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/fuelgauge/RestrictedPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    :cond_0
    new-instance v3, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    invoke-direct {v3, p1, p0, v2, v1}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    .line 427
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance p1, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;

    .line 429
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-direct {p1, v2, p0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;)V

    .line 428
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AdvancedPowerDetail"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x35

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 406
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mEnableTriState:Z

    if-eqz p0, :cond_0

    const p0, 0x7f1500bc

    goto :goto_0

    :cond_0
    const p0, 0x7f1500bd

    :goto_0
    return p0
.end method

.method public handleDialogClick(I)V
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_0

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleDialogClick(I)V

    :cond_0
    return-void
.end method

.method initHeader()V
    .locals 5

    .line 311
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0d021b

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 315
    invoke-static {v1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 316
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    const/4 v3, 0x0

    .line 317
    invoke-virtual {v0, v3, v3}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 320
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v4, :cond_1

    const-string v4, "extra_label"

    .line 321
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    const-string v4, "extra_icon_id"

    .line 323
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 325
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    goto :goto_0

    .line 330
    :cond_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 331
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    .line 332
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    .line 333
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;

    .line 336
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mEnableTriState:Z

    if-eqz v3, :cond_2

    .line 337
    invoke-direct {p0, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppActiveTime(Landroid/os/Bundle;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    :cond_2
    const/4 p0, 0x1

    .line 340
    invoke-virtual {v0, v1, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    return-void
.end method

.method initPreference(Landroid/content/Context;)V
    .locals 9

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_foreground_time"

    .line 346
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "extra_background_time"

    .line 347
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 348
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mForegroundPreference:Landroidx/preference/Preference;

    const v5, 0x7f04043e

    .line 349
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/CharSequence;

    long-to-double v1, v1

    const/4 v8, 0x0

    .line 350
    invoke-static {p1, v1, v2, v8, v8}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v7, v8

    .line 349
    invoke-static {v5, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 348
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundPreference:Landroidx/preference/Preference;

    const v1, 0x7f04039d

    .line 356
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-array v1, v6, [Ljava/lang/CharSequence;

    long-to-double v2, v3

    .line 357
    invoke-static {p1, v2, v3, v8, v8}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v1, v8

    .line 356
    invoke-static {p0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 355
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method initPreferenceForTriState(Landroid/content/Context;)V
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isValidPackageName()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f040d17

    if-nez v0, :cond_0

    const v0, 0x7f040d19

    .line 371
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 372
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f040d1e

    .line 376
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 377
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f040d16

    .line 381
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 383
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f040a74

    .line 384
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 387
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    new-instance v2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v0, 0x7f040d18

    .line 390
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method notifyBackupManager()V
    .locals 2

    .line 302
    iget v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizationMode:I

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 305
    :goto_0
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 437
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 438
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_0

    .line 439
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 244
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 1

    .line 452
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    .line 453
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    .line 452
    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 252
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 255
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mEnableTriState:Z

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->onCreateForTriState(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "app_usage_foreground"

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mForegroundPreference:Landroidx/preference/Preference;

    const-string v0, "app_usage_background"

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundPreference:Landroidx/preference/Preference;

    :goto_0
    const-string v0, "header_view"

    .line 261
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p1, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 289
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 290
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mEnableTriState:Z

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getSelectedPreference()I

    move-result v0

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->notifyBackupManager()V

    .line 294
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->logMetricCategory(I)V

    .line 295
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppUsageState(I)V

    .line 296
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Leave with mode: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdvancedPowerDetail"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 1

    .line 458
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 459
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->updatePreferenceState(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->updatePreferenceState(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->updatePreferenceState(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 270
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initHeader()V

    .line 273
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mEnableTriState:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizationMode:I

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initPreferenceForTriState(Landroid/content/Context;)V

    .line 276
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    .line 279
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v2, 0x761

    .line 278
    invoke-virtual {v1, p0, v2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initPreference(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
