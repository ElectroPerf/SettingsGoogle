.class Lcom/android/settings/accessibility/DisplaySizeData;
.super Lcom/android/settings/accessibility/PreviewSizeData;
.source "DisplaySizeData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/accessibility/PreviewSizeData<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/PreviewSizeData;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/PreviewSizeData;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v0

    if-gez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/accessibility/PreviewSizeData;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/PreviewSizeData;->setDefaultValue(Ljava/lang/Number;)V

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/PreviewSizeData;->setInitialIndex(I)V

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/PreviewSizeData;->setValues(Ljava/util/List;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDensity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/PreviewSizeData;->setDefaultValue(Ljava/lang/Number;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/PreviewSizeData;->setInitialIndex(I)V

    .line 51
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getValues()[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/PreviewSizeData;->setValues(Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method commit(I)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/accessibility/PreviewSizeData;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/accessibility/PreviewSizeData;->getDefaultValue()Ljava/lang/Number;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    .line 59
    invoke-static {v0}, Lcom/android/settingslib/display/DisplayDensityConfiguration;->clearForcedDisplayDensity(I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v0, p1}, Lcom/android/settingslib/display/DisplayDensityConfiguration;->setForcedDisplayDensity(II)V

    :goto_0
    return-void
.end method
