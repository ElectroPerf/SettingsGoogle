.class public Lcom/android/settings/accessibility/CaptionAppearanceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "CaptionAppearanceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCustom:Landroidx/preference/PreferenceCategory;

.field private mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

.field private mFontSize:Landroidx/preference/ListPreference;

.field private mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field private final mHandler:Landroid/os/Handler;

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mPreset:Lcom/android/settings/accessibility/PresetPreference;

.field private mPreviewText:Lcom/android/internal/widget/SubtitleView;

.field private mPreviewViewport:Landroid/view/View;

.field private mPreviewWindow:Landroid/view/View;

.field private mShowingCustom:Z

.field private mTypeface:Landroidx/preference/ListPreference;

.field private mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/accessibility/CaptionAppearanceFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewViewport(Lcom/android/settings/accessibility/CaptionAppearanceFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreviewViewport:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefreshPreviewText(Lcom/android/settings/accessibility/CaptionAppearanceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->refreshPreviewText()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 440
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f150043

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreferenceList:Ljava/util/List;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/android/settings/accessibility/CaptionAppearanceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment$1;-><init>(Lcom/android/settings/accessibility/CaptionAppearanceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V
    .locals 2

    .line 181
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 183
    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 184
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 185
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    if-eqz p2, :cond_0

    .line 188
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x9

    .line 189
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    mul-int/lit8 p2, p2, 0x10

    .line 188
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr p2, v1

    const v1, 0x3d5a511a    # 0.0533f

    mul-float/2addr p2, v1

    mul-float/2addr p2, v0

    .line 190
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0b00d1

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    mul-float/2addr p2, v0

    .line 194
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 197
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const p2, 0x7f0405d4

    if-eqz p0, :cond_1

    .line 199
    invoke-static {p3, p0, p2}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 201
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    :goto_1
    return-void
.end method

.method private enableCaptioningManager()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 431
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "accessibility_captioning_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 9

    const-string v0, "caption_preview"

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0d0485

    .line 210
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SubtitleView;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    const v1, 0x7f0d0488

    .line 212
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreviewWindow:Landroid/view/View;

    const v1, 0x7f0d0487

    .line 214
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreviewViewport:Landroid/view/View;

    .line 215
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 217
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010056

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    const v2, 0x7f010055

    .line 219
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "captioning_preset"

    .line 220
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/PresetPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    .line 221
    invoke-virtual {v3, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 222
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    const-string v1, "captioning_font_size"

    .line 224
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mFontSize:Landroidx/preference/ListPreference;

    .line 227
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreferenceList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "custom"

    .line 230
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x1

    .line 231
    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mShowingCustom:Z

    const v2, 0x7f01004e

    .line 233
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const v3, 0x7f01004d

    .line 234
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 235
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v5, "captioning_foreground_color"

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v4, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 236
    invoke-virtual {v4, v3}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 237
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v4, v2}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    const v4, 0x7f010054

    .line 239
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    const v5, 0x7f010053

    .line 240
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v6, "captioning_foreground_opacity"

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v5, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    .line 243
    invoke-virtual {v5, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 244
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v5, v4}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 246
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v6, "captioning_edge_color"

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v5, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 247
    invoke-virtual {v5, v3}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 248
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v5, v2}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 251
    array-length v5, v2

    add-int/2addr v5, v1

    new-array v5, v5, [I

    .line 252
    array-length v6, v3

    add-int/2addr v6, v1

    new-array v6, v6, [Ljava/lang/String;

    .line 253
    array-length v7, v2

    const/4 v8, 0x0

    invoke-static {v2, v8, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    array-length v2, v3

    invoke-static {v3, v8, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    aput v8, v5, v8

    const v1, 0x7f040641

    .line 256
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v8

    .line 257
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v2, "captioning_background_color"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 258
    invoke-virtual {v1, v6}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v5}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v2, "captioning_background_opacity"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    .line 262
    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 265
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v2, "captioning_window_color"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 266
    invoke-virtual {v1, v6}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v1, v5}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v2, "captioning_window_opacity"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    .line 270
    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v1, "captioning_edge_type"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/EdgeTypePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    .line 274
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    const-string v1, "captioning_typeface"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mTypeface:Landroidx/preference/ListPreference;

    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 280
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 284
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mTypeface:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mFontSize:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I
    .locals 0

    .line 351
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result p0

    .line 352
    invoke-virtual {p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result p1

    .line 355
    invoke-static {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result p2

    if-nez p2, :cond_0

    const p0, 0xffff00

    .line 357
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    or-int/2addr p0, p1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    .line 360
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const p2, 0xffffff

    and-int/2addr p0, p2

    const/high16 p2, -0x1000000

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method private parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V
    .locals 2

    .line 331
    invoke-static {p3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result p0

    const v0, 0xffffff

    if-nez p0, :cond_0

    and-int/lit16 p0, p3, 0xff

    shl-int/lit8 p0, p0, 0x18

    move v1, v0

    goto :goto_0

    :cond_0
    ushr-int/lit8 p0, p3, 0x18

    if-nez p0, :cond_1

    const/4 p0, 0x0

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x18

    move v1, p0

    move p0, p3

    goto :goto_0

    :cond_1
    const/high16 p0, -0x1000000

    or-int v1, p3, p0

    and-int/2addr p0, p3

    :goto_0
    or-int/2addr p0, v0

    .line 346
    invoke-virtual {p2, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 347
    invoke-virtual {p1, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    return-void
.end method

.method private refreshPreviewText()V
    .locals 5

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v1, :cond_3

    .line 148
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v2

    .line 149
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreviewViewport:Landroid/view/View;

    invoke-static {v3, v1, v4, v2}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    .line 151
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const v3, 0x7f0405d5

    if-eqz v2, :cond_1

    .line 153
    invoke-static {v0, v2, v3}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 155
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreviewWindow:Landroid/view/View;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 164
    :cond_2
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 166
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreviewWindow:Landroid/view/View;

    iget v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private refreshShowingCustom()V
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    .line 370
    invoke-virtual {v0}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 371
    iget-boolean v3, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mShowingCustom:Z

    if-eqz v3, :cond_1

    .line 372
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 373
    iput-boolean v2, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mShowingCustom:Z

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 374
    iget-boolean v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mShowingCustom:Z

    if-nez v0, :cond_2

    .line 375
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCustom:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 376
    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mShowingCustom:Z

    :cond_2
    :goto_1
    return-void
.end method

.method private updateAllPreferences()V
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v0

    .line 294
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mFontSize:Landroidx/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 300
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 305
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v1

    const v2, 0xffffff

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_0

    :cond_0
    move v1, v2

    .line 307
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v3, v4, v1}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 309
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1

    :cond_1
    move v1, v2

    .line 311
    :goto_1
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v3, v4, v1}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 313
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 317
    iget-object v0, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 318
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mTypeface:Landroidx/preference/ListPreference;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const p0, 0x7f040a80

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CaptionAppearanceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x71b

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150043

    return p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string p1, "captioning"

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 122
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->initializeAllPreferences()V

    .line 123
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->updateAllPreferences()V

    .line 124
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->refreshShowingCustom()V

    .line 125
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->installUpdateListeners()V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->refreshPreviewText()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 410
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mTypeface:Landroidx/preference/ListPreference;

    if-ne v1, p1, :cond_0

    .line 412
    check-cast p2, Ljava/lang/String;

    const-string p1, "accessibility_captioning_typeface"

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 414
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->refreshPreviewText()V

    .line 415
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->enableCaptioningManager()V

    goto :goto_0

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mFontSize:Landroidx/preference/ListPreference;

    if-ne v1, p1, :cond_1

    .line 417
    check-cast p2, Ljava/lang/String;

    .line 419
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const-string p2, "accessibility_captioning_font_scale"

    .line 417
    invoke-static {v0, p2, p1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 420
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->refreshPreviewText()V

    .line 421
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->enableCaptioningManager()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V
    .locals 3

    .line 382
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_7

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_0

    goto :goto_2

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_6

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_1

    goto :goto_1

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_5

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_2

    goto :goto_0

    .line 395
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_3

    const-string p1, "accessibility_captioning_edge_color"

    .line 396
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 397
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-ne v1, p1, :cond_4

    const-string p1, "accessibility_captioning_preset"

    .line 398
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->refreshShowingCustom()V

    goto :goto_3

    .line 400
    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    if-ne v1, p1, :cond_8

    const-string p1, "accessibility_captioning_edge_type"

    .line 401
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 392
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, p1}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result p1

    const-string p2, "accessibility_captioning_window_color"

    .line 393
    invoke-static {v0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 388
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, p1}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result p1

    const-string p2, "accessibility_captioning_background_color"

    .line 389
    invoke-static {v0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 384
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, p1}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result p1

    const-string p2, "accessibility_captioning_foreground_color"

    .line 385
    invoke-static {v0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->refreshPreviewText()V

    .line 405
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionAppearanceFragment;->enableCaptioningManager()V

    return-void
.end method
