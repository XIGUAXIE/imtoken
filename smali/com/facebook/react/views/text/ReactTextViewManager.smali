.class public Lcom/facebook/react/views/text/ReactTextViewManager;
.super Lcom/facebook/react/views/text/ReactTextAnchorViewManager;
.source "ReactTextViewManager.java"

# interfaces
.implements Lcom/facebook/react/uimanager/IViewManagerWithChildren;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RCTText"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/views/text/ReactTextAnchorViewManager<",
        "Lcom/facebook/react/views/text/ReactTextView;",
        "Lcom/facebook/react/views/text/ReactTextShadowNode;",
        ">;",
        "Lcom/facebook/react/uimanager/IViewManagerWithChildren;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "RCTText"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/facebook/react/views/text/ReactTextAnchorViewManager;-><init>()V

    return-void
.end method

.method private getTextBreakStrategy(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    const/4 v2, -0x1

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x72ba92f8

    if-eq v3, v4, :cond_1

    const v4, -0x35c7ce4e    # -3017836.5f

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "simple"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "balanced"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :cond_5
    :goto_2
    return v0
.end method


# virtual methods
.method public bridge synthetic createShadowNodeInstance()Lcom/facebook/react/uimanager/ReactShadowNode;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/facebook/react/views/text/ReactTextViewManager;->createShadowNodeInstance()Lcom/facebook/react/views/text/ReactTextShadowNode;

    move-result-object v0

    return-object v0
.end method

.method public createShadowNodeInstance()Lcom/facebook/react/views/text/ReactTextShadowNode;
    .locals 1

    .line 59
    new-instance v0, Lcom/facebook/react/views/text/ReactTextShadowNode;

    invoke-direct {v0}, Lcom/facebook/react/views/text/ReactTextShadowNode;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/text/ReactTextViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/text/ReactTextView;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/text/ReactTextView;
    .locals 1

    .line 44
    new-instance v0, Lcom/facebook/react/views/text/ReactTextView;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/text/ReactTextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 4

    const-string/jumbo v0, "registrationName"

    const-string/jumbo v1, "onTextLayout"

    .line 127
    invoke-static {v0, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "onInlineViewLayout"

    .line 128
    invoke-static {v0, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "topTextLayout"

    const-string/jumbo v3, "topInlineViewLayout"

    .line 126
    invoke-static {v2, v1, v3, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RCTText"

    return-object v0
.end method

.method public getShadowNodeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/react/views/text/ReactTextShadowNode;",
            ">;"
        }
    .end annotation

    .line 64
    const-class v0, Lcom/facebook/react/views/text/ReactTextShadowNode;

    return-object v0
.end method

.method public measure(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 7

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p5

    move-object v4, p6

    move v5, p7

    move-object v6, p8

    .line 142
    invoke-static/range {v0 .. v6}, Lcom/facebook/react/views/text/TextLayoutManager;->measureText(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J

    move-result-wide p1

    return-wide p1
.end method

.method public needsCustomLayoutForChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual {p0, p1}, Lcom/facebook/react/views/text/ReactTextViewManager;->onAfterUpdateTransaction(Lcom/facebook/react/views/text/ReactTextView;)V

    return-void
.end method

.method protected onAfterUpdateTransaction(Lcom/facebook/react/views/text/ReactTextView;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/facebook/react/views/text/ReactTextAnchorViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 70
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextView;->updateView()V

    return-void
.end method

.method public bridge synthetic setPadding(Landroid/view/View;IIII)V
    .locals 0

    .line 30
    check-cast p1, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual/range {p0 .. p5}, Lcom/facebook/react/views/text/ReactTextViewManager;->setPadding(Lcom/facebook/react/views/text/ReactTextView;IIII)V

    return-void
.end method

.method public setPadding(Lcom/facebook/react/views/text/ReactTextView;IIII)V
    .locals 0

    .line 148
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/facebook/react/views/text/ReactTextView;->setPadding(IIII)V

    return-void
.end method

.method public bridge synthetic updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/text/ReactTextViewManager;->updateExtraData(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/Object;)V

    return-void
.end method

.method public updateExtraData(Lcom/facebook/react/views/text/ReactTextView;Ljava/lang/Object;)V
    .locals 1

    .line 49
    check-cast p2, Lcom/facebook/react/views/text/ReactTextUpdate;

    .line 50
    invoke-virtual {p2}, Lcom/facebook/react/views/text/ReactTextUpdate;->containsImages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p2}, Lcom/facebook/react/views/text/ReactTextUpdate;->getText()Landroid/text/Spannable;

    move-result-object v0

    .line 52
    invoke-static {v0, p1}, Lcom/facebook/react/views/text/TextInlineImageSpan;->possiblyUpdateInlineImageSpans(Landroid/text/Spannable;Landroid/widget/TextView;)V

    .line 54
    :cond_0
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/text/ReactTextView;->setText(Lcom/facebook/react/views/text/ReactTextUpdate;)V

    return-void
.end method

.method public bridge synthetic updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lcom/facebook/react/views/text/ReactTextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/text/ReactTextViewManager;->updateState(Lcom/facebook/react/views/text/ReactTextView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateState(Lcom/facebook/react/views/text/ReactTextView;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;
    .locals 10

    .line 81
    invoke-interface {p3}, Lcom/facebook/react/uimanager/StateWrapper;->getState()Lcom/facebook/react/bridge/ReadableNativeMap;

    move-result-object p3

    const-string v0, "attributedString"

    .line 82
    invoke-virtual {p3, v0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableNativeMap;

    move-result-object v0

    const-string/jumbo v1, "paragraphAttributes"

    .line 83
    invoke-virtual {p3, v1}, Lcom/facebook/react/bridge/ReadableNativeMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableNativeMap;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lcom/facebook/react/views/text/ReactTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/facebook/react/views/text/TextLayoutManager;->getOrCreateSpannableForText(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;)Landroid/text/Spannable;

    move-result-object v4

    .line 87
    invoke-virtual {p1, v4}, Lcom/facebook/react/views/text/ReactTextView;->setSpanned(Landroid/text/Spannable;)V

    .line 89
    new-instance p1, Lcom/facebook/react/views/text/TextAttributeProps;

    invoke-direct {p1, p2}, Lcom/facebook/react/views/text/TextAttributeProps;-><init>(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    const-string/jumbo p2, "textBreakStrategy"

    .line 92
    invoke-interface {v1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/facebook/react/views/text/ReactTextViewManager;->getTextBreakStrategy(Ljava/lang/String;)I

    move-result v8

    .line 97
    new-instance p2, Lcom/facebook/react/views/text/ReactTextUpdate;

    const-string v0, "mostRecentEventCount"

    .line 99
    invoke-virtual {p3, v0}, Lcom/facebook/react/bridge/ReadableNativeMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Lcom/facebook/react/bridge/ReadableNativeMap;->getInt(Ljava/lang/String;)I

    move-result p3

    move v5, p3

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x0

    .line 101
    invoke-virtual {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getTextAlign()I

    move-result v7

    const/4 v9, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v9}, Lcom/facebook/react/views/text/ReactTextUpdate;-><init>(Landroid/text/Spannable;IZIII)V

    return-object p2
.end method
