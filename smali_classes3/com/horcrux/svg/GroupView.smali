.class Lcom/horcrux/svg/GroupView;
.super Lcom/horcrux/svg/RenderableView;
.source "GroupView.java"


# instance fields
.field mFont:Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mGlyphContext:Lcom/horcrux/svg/GlyphContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method

.method private static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 62
    throw p0
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/GroupView;->setupGlyphContext(Landroid/graphics/Canvas;)V

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/GroupView;->clip(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 81
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->drawGroup(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    return-void
.end method

.method drawGroup(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 7

    .line 85
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->pushGlyphContext()V

    .line 86
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x0

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 90
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 91
    instance-of v4, v3, Lcom/horcrux/svg/MaskView;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    instance-of v4, v3, Lcom/horcrux/svg/VirtualView;

    if-eqz v4, :cond_5

    .line 95
    check-cast v3, Lcom/horcrux/svg/VirtualView;

    .line 96
    iget-object v4, v3, Lcom/horcrux/svg/VirtualView;->mDisplay:Ljava/lang/String;

    const-string v5, "none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    instance-of v4, v3, Lcom/horcrux/svg/RenderableView;

    if-eqz v4, :cond_2

    .line 100
    move-object v5, v3

    check-cast v5, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v5, p0}, Lcom/horcrux/svg/RenderableView;->mergeProperties(Lcom/horcrux/svg/RenderableView;)V

    .line 103
    :cond_2
    iget-object v5, p0, Lcom/horcrux/svg/GroupView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {v3, p1, v5}, Lcom/horcrux/svg/VirtualView;->saveAndSetupCanvas(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)I

    move-result v5

    .line 104
    iget v6, p0, Lcom/horcrux/svg/GroupView;->mOpacity:F

    mul-float v6, v6, p3

    invoke-virtual {v3, p1, p2, v6}, Lcom/horcrux/svg/VirtualView;->render(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 105
    invoke-virtual {v3}, Lcom/horcrux/svg/VirtualView;->getClientRect()Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 107
    invoke-virtual {v1, v6}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 110
    :cond_3
    invoke-virtual {v3, p1, v5}, Lcom/horcrux/svg/VirtualView;->restoreCanvas(Landroid/graphics/Canvas;I)V

    if-eqz v4, :cond_4

    .line 113
    move-object v4, v3

    check-cast v4, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v4}, Lcom/horcrux/svg/RenderableView;->resetProperties()V

    .line 116
    :cond_4
    invoke-virtual {v3}, Lcom/horcrux/svg/VirtualView;->isResponsible()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 117
    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->enableTouchEvents()V

    goto :goto_1

    .line 119
    :cond_5
    instance-of v4, v3, Lcom/horcrux/svg/SvgView;

    if-eqz v4, :cond_6

    .line 120
    check-cast v3, Lcom/horcrux/svg/SvgView;

    .line 121
    invoke-virtual {v3, p1}, Lcom/horcrux/svg/SvgView;->drawChildren(Landroid/graphics/Canvas;)V

    .line 122
    invoke-virtual {v3}, Lcom/horcrux/svg/SvgView;->isResponsible()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 123
    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->enableTouchEvents()V

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_7
    invoke-virtual {p0, v1}, Lcom/horcrux/svg/GroupView;->setClientRect(Landroid/graphics/RectF;)V

    .line 128
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->popGlyphContext()V

    return-void
.end method

.method drawPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2, p3}, Lcom/horcrux/svg/RenderableView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    return-void
.end method

.method getGlyphContext()Lcom/horcrux/svg/GlyphContext;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/horcrux/svg/GroupView;->mGlyphContext:Lcom/horcrux/svg/GlyphContext;

    return-object v0
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 138
    iget-object p1, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    return-object p1

    .line 140
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 143
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 144
    instance-of v2, v1, Lcom/horcrux/svg/MaskView;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    instance-of v2, v1, Lcom/horcrux/svg/VirtualView;

    if-eqz v2, :cond_2

    .line 148
    check-cast v1, Lcom/horcrux/svg/VirtualView;

    .line 149
    iget-object v2, v1, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 150
    iget-object v3, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, p2}, Lcom/horcrux/svg/VirtualView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_3
    iget-object p1, p0, Lcom/horcrux/svg/GroupView;->mPath:Landroid/graphics/Path;

    return-object p1
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Region$Op;)Landroid/graphics/Path;
    .locals 7

    .line 158
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt v1, v3, :cond_3

    .line 161
    invoke-virtual {p3}, Landroid/graphics/Region$Op;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Path$Op;->valueOf(Ljava/lang/String;)Landroid/graphics/Path$Op;

    move-result-object v1

    .line 162
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 163
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 164
    instance-of v4, v3, Lcom/horcrux/svg/MaskView;

    if-eqz v4, :cond_0

    goto :goto_2

    .line 167
    :cond_0
    instance-of v4, v3, Lcom/horcrux/svg/VirtualView;

    if-eqz v4, :cond_2

    .line 168
    check-cast v3, Lcom/horcrux/svg/VirtualView;

    .line 169
    iget-object v4, v3, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 171
    instance-of v5, v3, Lcom/horcrux/svg/GroupView;

    if-eqz v5, :cond_1

    .line 172
    check-cast v3, Lcom/horcrux/svg/GroupView;

    invoke-virtual {v3, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Region$Op;)Landroid/graphics/Path;

    move-result-object v3

    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {v3, p1, p2}, Lcom/horcrux/svg/VirtualView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v3

    .line 176
    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 177
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 182
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 183
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 184
    :goto_3
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 185
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 186
    instance-of v5, v4, Lcom/horcrux/svg/MaskView;

    if-eqz v5, :cond_4

    goto :goto_5

    .line 189
    :cond_4
    instance-of v5, v4, Lcom/horcrux/svg/VirtualView;

    if-eqz v5, :cond_7

    .line 190
    check-cast v4, Lcom/horcrux/svg/VirtualView;

    .line 191
    iget-object v5, v4, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 193
    instance-of v6, v4, Lcom/horcrux/svg/GroupView;

    if-eqz v6, :cond_5

    .line 194
    check-cast v4, Lcom/horcrux/svg/GroupView;

    invoke-virtual {v4, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Region$Op;)Landroid/graphics/Path;

    move-result-object v4

    goto :goto_4

    .line 196
    :cond_5
    invoke-virtual {v4, p1, p2}, Lcom/horcrux/svg/VirtualView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v4

    :goto_4
    if-eqz v5, :cond_6

    .line 199
    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 201
    :cond_6
    new-instance v5, Landroid/graphics/Region;

    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    .line 202
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 203
    invoke-virtual {v1, v5, p3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 206
    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_9
    return-object v0
.end method

.method getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object v0

    invoke-static {v0}, Lcom/horcrux/svg/GroupView;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/GroupView;

    invoke-virtual {v0}, Lcom/horcrux/svg/GroupView;->getGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    return-object v0
.end method

.method hitTest([F)I
    .locals 8

    .line 214
    iget-boolean v0, p0, Lcom/horcrux/svg/GroupView;->mInvertible:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/horcrux/svg/GroupView;->mTransformInvertible:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 219
    iget-object v2, p0, Lcom/horcrux/svg/GroupView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 220
    iget-object p1, p0, Lcom/horcrux/svg/GroupView;->mInvTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 p1, 0x0

    .line 222
    aget v2, v0, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x1

    .line 223
    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 225
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getClipPath()Landroid/graphics/Path;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 227
    iget-object v6, p0, Lcom/horcrux/svg/GroupView;->mClipRegionPath:Landroid/graphics/Path;

    if-eq v6, v5, :cond_1

    .line 228
    iput-object v5, p0, Lcom/horcrux/svg/GroupView;->mClipRegionPath:Landroid/graphics/Path;

    .line 229
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/horcrux/svg/GroupView;->mClipBounds:Landroid/graphics/RectF;

    .line 230
    iget-object v6, p0, Lcom/horcrux/svg/GroupView;->mClipBounds:Landroid/graphics/RectF;

    invoke-virtual {v5, v6, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 231
    iget-object v6, p0, Lcom/horcrux/svg/GroupView;->mClipBounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v5, v6}, Lcom/horcrux/svg/GroupView;->getRegion(Landroid/graphics/Path;Landroid/graphics/RectF;)Landroid/graphics/Region;

    move-result-object v5

    iput-object v5, p0, Lcom/horcrux/svg/GroupView;->mClipRegion:Landroid/graphics/Region;

    .line 233
    :cond_1
    iget-object v5, p0, Lcom/horcrux/svg/GroupView;->mClipRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 238
    :cond_2
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_8

    .line 239
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 240
    instance-of v5, v4, Lcom/horcrux/svg/VirtualView;

    if-eqz v5, :cond_6

    .line 241
    instance-of v5, v4, Lcom/horcrux/svg/MaskView;

    if-eqz v5, :cond_3

    goto :goto_2

    .line 245
    :cond_3
    move-object v5, v4

    check-cast v5, Lcom/horcrux/svg/VirtualView;

    .line 247
    invoke-virtual {v5, v0}, Lcom/horcrux/svg/VirtualView;->hitTest([F)I

    move-result v6

    if-eq v6, v1, :cond_7

    .line 249
    invoke-virtual {v5}, Lcom/horcrux/svg/VirtualView;->isResponsible()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    if-eq v6, p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getId()I

    move-result v6

    :cond_5
    :goto_1
    return v6

    .line 251
    :cond_6
    instance-of v5, v4, Lcom/horcrux/svg/SvgView;

    if-eqz v5, :cond_7

    .line 252
    move-object v5, v4

    check-cast v5, Lcom/horcrux/svg/SvgView;

    .line 254
    aget v6, v0, p1

    aget v7, v0, v3

    invoke-virtual {v5, v6, v7}, Lcom/horcrux/svg/SvgView;->reactTagForTouch(FF)I

    move-result v5

    .line 255
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v5, v4, :cond_7

    return v5

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_8
    :goto_3
    return v1
.end method

.method popGlyphContext()V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/GlyphContext;->popContext()V

    return-void
.end method

.method pushGlyphContext()V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getTextRootGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    iget-object v1, p0, Lcom/horcrux/svg/GroupView;->mFont:Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v0, p0, v1}, Lcom/horcrux/svg/GlyphContext;->pushContext(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method resetProperties()V
    .locals 3

    const/4 v0, 0x0

    .line 279
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 280
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 281
    instance-of v2, v1, Lcom/horcrux/svg/RenderableView;

    if-eqz v2, :cond_0

    .line 282
    check-cast v1, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v1}, Lcom/horcrux/svg/RenderableView;->resetProperties()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method saveDefinition()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/horcrux/svg/GroupView;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    iget-object v1, p0, Lcom/horcrux/svg/GroupView;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/horcrux/svg/SvgView;->defineTemplate(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 269
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 270
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/GroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 271
    instance-of v2, v1, Lcom/horcrux/svg/VirtualView;

    if-eqz v2, :cond_1

    .line 272
    check-cast v1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v1}, Lcom/horcrux/svg/VirtualView;->saveDefinition()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFont(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "font"
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/horcrux/svg/GroupView;->mFont:Lcom/facebook/react/bridge/ReadableMap;

    .line 42
    invoke-virtual {p0}, Lcom/horcrux/svg/GroupView;->invalidate()V

    return-void
.end method

.method setupGlyphContext(Landroid/graphics/Canvas;)V
    .locals 3

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 47
    iget-object p1, p0, Lcom/horcrux/svg/GroupView;->mMatrix:Landroid/graphics/Matrix;

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lcom/horcrux/svg/GroupView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/horcrux/svg/GroupView;->mTransform:Landroid/graphics/Matrix;

    if-eqz p1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/horcrux/svg/GroupView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 53
    :cond_1
    new-instance p1, Lcom/horcrux/svg/GlyphContext;

    iget v1, p0, Lcom/horcrux/svg/GroupView;->mScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p1, v1, v2, v0}, Lcom/horcrux/svg/GlyphContext;-><init>(FFF)V

    iput-object p1, p0, Lcom/horcrux/svg/GroupView;->mGlyphContext:Lcom/horcrux/svg/GlyphContext;

    return-void
.end method
