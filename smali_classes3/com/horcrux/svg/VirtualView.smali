.class public abstract Lcom/horcrux/svg/VirtualView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "VirtualView.java"


# static fields
.field private static final CLIP_RULE_EVENODD:I = 0x0

.field static final CLIP_RULE_NONZERO:I = 0x1

.field private static final M_SQRT1_2l:D = 0.7071067811865476

.field private static final sRawMatrix:[F


# instance fields
.field private canvasDiagonal:D

.field private canvasHeight:F

.field private canvasWidth:F

.field elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/PathElement;",
            ">;"
        }
    .end annotation
.end field

.field private fontSize:D

.field private glyphContext:Lcom/horcrux/svg/GlyphContext;

.field mBox:Landroid/graphics/RectF;

.field mCTM:Landroid/graphics/Matrix;

.field mCTMInvertible:Z

.field private mCachedClipPath:Landroid/graphics/Path;

.field private mClientRect:Landroid/graphics/RectF;

.field mClipBounds:Landroid/graphics/RectF;

.field private mClipPath:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mClipRegion:Landroid/graphics/Region;

.field mClipRegionPath:Landroid/graphics/Path;

.field mClipRule:I

.field final mContext:Lcom/facebook/react/bridge/ReactContext;

.field mDisplay:Ljava/lang/String;

.field mFillBounds:Landroid/graphics/RectF;

.field mFillPath:Landroid/graphics/Path;

.field mInvCTM:Landroid/graphics/Matrix;

.field mInvMatrix:Landroid/graphics/Matrix;

.field final mInvTransform:Landroid/graphics/Matrix;

.field mInvertible:Z

.field mMarkerBounds:Landroid/graphics/RectF;

.field mMarkerEnd:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mMarkerMid:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mMarkerPath:Landroid/graphics/Path;

.field mMarkerRegion:Landroid/graphics/Region;

.field mMarkerStart:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mMask:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mMatrix:Landroid/graphics/Matrix;

.field mName:Ljava/lang/String;

.field private mOnLayout:Z

.field mOpacity:F

.field mPath:Landroid/graphics/Path;

.field mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

.field mRegion:Landroid/graphics/Region;

.field private mResponsible:Z

.field final mScale:F

.field mStrokeBounds:Landroid/graphics/RectF;

.field mStrokePath:Landroid/graphics/Path;

.field mStrokeRegion:Landroid/graphics/Region;

.field private mTextRoot:Lcom/horcrux/svg/GroupView;

.field mTransform:Landroid/graphics/Matrix;

.field mTransformInvertible:Z

.field private svgView:Lcom/horcrux/svg/SvgView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 49
    fill-array-data v0, :array_0

    sput-object v0, Lcom/horcrux/svg/VirtualView;->sRawMatrix:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    iput v0, p0, Lcom/horcrux/svg/VirtualView;->mOpacity:F

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mCTM:Landroid/graphics/Matrix;

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mTransform:Landroid/graphics/Matrix;

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mInvCTM:Landroid/graphics/Matrix;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mInvMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mInvTransform:Landroid/graphics/Matrix;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/horcrux/svg/VirtualView;->mInvertible:Z

    .line 62
    iput-boolean v0, p0, Lcom/horcrux/svg/VirtualView;->mCTMInvertible:Z

    .line 63
    iput-boolean v0, p0, Lcom/horcrux/svg/VirtualView;->mTransformInvertible:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 85
    iput-wide v0, p0, Lcom/horcrux/svg/VirtualView;->fontSize:D

    .line 86
    iput-wide v0, p0, Lcom/horcrux/svg/VirtualView;->canvasDiagonal:D

    const/high16 v0, -0x40800000    # -1.0f

    .line 87
    iput v0, p0, Lcom/horcrux/svg/VirtualView;->canvasHeight:F

    .line 88
    iput v0, p0, Lcom/horcrux/svg/VirtualView;->canvasWidth:F

    .line 38
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 39
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getScreenDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    return-void
.end method

.method private clearParentCache()V
    .locals 2

    move-object v0, p0

    .line 146
    :goto_0
    invoke-virtual {v0}, Lcom/horcrux/svg/VirtualView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 147
    instance-of v1, v0, Lcom/horcrux/svg/VirtualView;

    if-nez v1, :cond_0

    return-void

    .line 150
    :cond_0
    check-cast v0, Lcom/horcrux/svg/VirtualView;

    .line 151
    iget-object v1, v0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    if-nez v1, :cond_1

    return-void

    .line 154
    :cond_1
    invoke-virtual {v0}, Lcom/horcrux/svg/VirtualView;->clearCache()V

    goto :goto_0
.end method

.method private fromRelativeFast(Lcom/horcrux/svg/SVGLength;)D
    .locals 4

    .line 442
    sget-object v0, Lcom/horcrux/svg/VirtualView$1;->$SwitchMap$com$horcrux$svg$SVGLength$UnitType:[I

    iget-object v1, p1, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    invoke-virtual {v1}, Lcom/horcrux/svg/SVGLength$UnitType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :pswitch_0
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    goto :goto_0

    :pswitch_1
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    goto :goto_0

    :pswitch_2
    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :pswitch_3
    const-wide v0, 0x400c58b1572580c3L    # 3.543307

    goto :goto_0

    :pswitch_4
    const-wide v0, 0x4041b76ed677707aL    # 35.43307

    goto :goto_0

    .line 447
    :pswitch_5
    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->getFontSizeFromContext()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_0

    .line 444
    :pswitch_6
    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->getFontSizeFromContext()D

    move-result-wide v0

    .line 469
    :goto_0
    iget-wide v2, p1, Lcom/horcrux/svg/SVGLength;->value:D

    mul-double v2, v2, v0

    iget p1, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    float-to-double v0, p1

    mul-double v2, v2, v0

    return-wide v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCanvasDiagonal()D
    .locals 6

    .line 501
    iget-wide v0, p0, Lcom/horcrux/svg/VirtualView;->canvasDiagonal:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 504
    :cond_0
    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->getCanvasWidth()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 505
    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->getCanvasHeight()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 506
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    mul-double v0, v0, v2

    iput-wide v0, p0, Lcom/horcrux/svg/VirtualView;->canvasDiagonal:D

    return-wide v0
.end method

.method private getCanvasHeight()F
    .locals 2

    .line 487
    iget v0, p0, Lcom/horcrux/svg/VirtualView;->canvasHeight:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 492
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->getCanvasBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/horcrux/svg/VirtualView;->canvasHeight:F

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {v0}, Lcom/horcrux/svg/GroupView;->getGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/GlyphContext;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/VirtualView;->canvasHeight:F

    .line 497
    :goto_0
    iget v0, p0, Lcom/horcrux/svg/VirtualView;->canvasHeight:F

    return v0
.end method

.method private getCanvasWidth()F
    .locals 2

    .line 473
    iget v0, p0, Lcom/horcrux/svg/VirtualView;->canvasWidth:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->getCanvasBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/horcrux/svg/VirtualView;->canvasWidth:F

    goto :goto_0

    .line 480
    :cond_1
    invoke-virtual {v0}, Lcom/horcrux/svg/GroupView;->getGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/GlyphContext;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/VirtualView;->canvasWidth:F

    .line 483
    :goto_0
    iget v0, p0, Lcom/horcrux/svg/VirtualView;->canvasWidth:F

    return v0
.end method

.method private getFontSizeFromContext()D
    .locals 5

    .line 193
    iget-wide v0, p0, Lcom/horcrux/svg/VirtualView;->fontSize:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object v0

    if-nez v0, :cond_1

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    return-wide v0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->glyphContext:Lcom/horcrux/svg/GlyphContext;

    if-nez v1, :cond_2

    .line 202
    invoke-virtual {v0}, Lcom/horcrux/svg/GroupView;->getGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->glyphContext:Lcom/horcrux/svg/GlyphContext;

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->glyphContext:Lcom/horcrux/svg/GlyphContext;

    invoke-virtual {v0}, Lcom/horcrux/svg/GlyphContext;->getFontSize()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/horcrux/svg/VirtualView;->fontSize:D

    return-wide v0
.end method


# virtual methods
.method clearCache()V
    .locals 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 123
    iput-wide v0, p0, Lcom/horcrux/svg/VirtualView;->canvasDiagonal:D

    const/high16 v2, -0x40800000    # -1.0f

    .line 124
    iput v2, p0, Lcom/horcrux/svg/VirtualView;->canvasHeight:F

    .line 125
    iput v2, p0, Lcom/horcrux/svg/VirtualView;->canvasWidth:F

    .line 126
    iput-wide v0, p0, Lcom/horcrux/svg/VirtualView;->fontSize:D

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mStrokeRegion:Landroid/graphics/Region;

    .line 128
    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mMarkerRegion:Landroid/graphics/Region;

    .line 129
    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mRegion:Landroid/graphics/Region;

    .line 130
    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method clearChildCache()V
    .locals 3

    .line 134
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->clearCache()V

    const/4 v0, 0x0

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 136
    invoke-virtual {p0, v0}, Lcom/horcrux/svg/VirtualView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 137
    instance-of v2, v1, Lcom/horcrux/svg/VirtualView;

    if-eqz v2, :cond_0

    .line 138
    check-cast v1, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v1}, Lcom/horcrux/svg/VirtualView;->clearChildCache()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method clip(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualView;->getClipPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 371
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    return-void
.end method

.method abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
.end method

.method getClientRect()Landroid/graphics/RectF;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method getClipPath()Landroid/graphics/Path;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mCachedClipPath:Landroid/graphics/Path;

    return-object v0
.end method

.method getClipPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mClipPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 342
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->mClipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/horcrux/svg/SvgView;->getDefinedClipPath(Ljava/lang/String;)Lcom/horcrux/svg/VirtualView;

    move-result-object v0

    check-cast v0, Lcom/horcrux/svg/ClipPathView;

    const-string v1, "ReactNative"

    if-eqz v0, :cond_3

    .line 345
    iget v2, v0, Lcom/horcrux/svg/ClipPathView;->mClipRule:I

    if-nez v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/horcrux/svg/ClipPathView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object p1

    goto :goto_0

    .line 346
    :cond_0
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p1, p2, v2}, Lcom/horcrux/svg/ClipPathView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Region$Op;)Landroid/graphics/Path;

    move-result-object p1

    .line 347
    :goto_0
    iget-object p2, v0, Lcom/horcrux/svg/ClipPathView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 348
    iget-object p2, v0, Lcom/horcrux/svg/ClipPathView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 349
    iget p2, v0, Lcom/horcrux/svg/ClipPathView;->mClipRule:I

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 356
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RNSVG: clipRule: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/horcrux/svg/VirtualView;->mClipRule:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " unrecognized"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 351
    :cond_1
    sget-object p2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 358
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mCachedClipPath:Landroid/graphics/Path;

    goto :goto_2

    .line 360
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RNSVG: Undefined clipPath: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/horcrux/svg/VirtualView;->mClipPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getClipPath()Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method getParentTextRoot()Lcom/horcrux/svg/GroupView;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 184
    instance-of v1, v0, Lcom/horcrux/svg/VirtualView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_0
    check-cast v0, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v0}, Lcom/horcrux/svg/VirtualView;->getTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object v0

    return-object v0
.end method

.method abstract getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
.end method

.method getSvgView()Lcom/horcrux/svg/SvgView;
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->svgView:Lcom/horcrux/svg/SvgView;

    if-eqz v0, :cond_0

    return-object v0

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 392
    :cond_1
    instance-of v1, v0, Lcom/horcrux/svg/SvgView;

    if-eqz v1, :cond_2

    .line 393
    check-cast v0, Lcom/horcrux/svg/SvgView;

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->svgView:Lcom/horcrux/svg/SvgView;

    goto :goto_0

    .line 394
    :cond_2
    instance-of v1, v0, Lcom/horcrux/svg/VirtualView;

    if-eqz v1, :cond_3

    .line 395
    check-cast v0, Lcom/horcrux/svg/VirtualView;

    invoke-virtual {v0}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->svgView:Lcom/horcrux/svg/SvgView;

    goto :goto_0

    .line 397
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RNSVG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " should be descendant of a SvgView."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->svgView:Lcom/horcrux/svg/SvgView;

    return-object v0
.end method

.method getTextRoot()Lcom/horcrux/svg/GroupView;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mTextRoot:Lcom/horcrux/svg/GroupView;

    if-nez v0, :cond_2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    .line 163
    instance-of v1, v0, Lcom/horcrux/svg/GroupView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/horcrux/svg/GroupView;

    invoke-virtual {v1}, Lcom/horcrux/svg/GroupView;->getGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 164
    iput-object v1, p0, Lcom/horcrux/svg/VirtualView;->mTextRoot:Lcom/horcrux/svg/GroupView;

    goto :goto_1

    .line 168
    :cond_0
    invoke-virtual {v0}, Lcom/horcrux/svg/VirtualView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 170
    instance-of v1, v0, Lcom/horcrux/svg/VirtualView;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 173
    :cond_1
    check-cast v0, Lcom/horcrux/svg/VirtualView;

    goto :goto_0

    .line 178
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mTextRoot:Lcom/horcrux/svg/GroupView;

    return-object v0
.end method

.method abstract hitTest([F)I
.end method

.method public invalidate()V
    .locals 1

    .line 114
    instance-of v0, p0, Lcom/horcrux/svg/RenderableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->clearCache()V

    .line 118
    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->clearParentCache()V

    .line 119
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    return-void
.end method

.method isResponsible()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lcom/horcrux/svg/VirtualView;->mResponsible:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 542
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    if-nez p1, :cond_0

    return-void

    .line 546
    :cond_0
    instance-of p2, p0, Lcom/horcrux/svg/GroupView;

    if-nez p2, :cond_1

    .line 547
    iget p1, p1, Landroid/graphics/RectF;->left:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 548
    iget-object p2, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    .line 549
    iget-object p3, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->right:F

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    .line 550
    iget-object p4, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    float-to-double p4, p4

    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    double-to-int p4, p4

    .line 551
    invoke-virtual {p0, p1}, Lcom/horcrux/svg/VirtualView;->setLeft(I)V

    .line 552
    invoke-virtual {p0, p2}, Lcom/horcrux/svg/VirtualView;->setTop(I)V

    .line 553
    invoke-virtual {p0, p3}, Lcom/horcrux/svg/VirtualView;->setRight(I)V

    .line 554
    invoke-virtual {p0, p4}, Lcom/horcrux/svg/VirtualView;->setBottom(I)V

    .line 556
    :cond_1
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 557
    iget-object p2, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    .line 558
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    goto :goto_0

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/horcrux/svg/VirtualView;->getDefaultSize(II)I

    move-result p1

    .line 521
    :goto_0
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    goto :goto_1

    .line 523
    :cond_1
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/horcrux/svg/VirtualView;->getDefaultSize(II)I

    move-result p2

    .line 525
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/VirtualView;->setMeasuredDimension(II)V

    return-void
.end method

.method relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D
    .locals 4

    .line 414
    iget-object v0, p1, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 415
    sget-object v1, Lcom/horcrux/svg/SVGLength$UnitType;->NUMBER:Lcom/horcrux/svg/SVGLength$UnitType;

    if-ne v0, v1, :cond_0

    .line 416
    iget-wide v0, p1, Lcom/horcrux/svg/SVGLength;->value:D

    iget p1, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    :goto_0
    float-to-double v2, p1

    mul-double v0, v0, v2

    return-wide v0

    .line 417
    :cond_0
    sget-object v1, Lcom/horcrux/svg/SVGLength$UnitType;->PERCENTAGE:Lcom/horcrux/svg/SVGLength$UnitType;

    if-ne v0, v1, :cond_1

    .line 418
    iget-wide v0, p1, Lcom/horcrux/svg/SVGLength;->value:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->getCanvasHeight()F

    move-result p1

    goto :goto_0

    .line 420
    :cond_1
    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualView;->fromRelativeFast(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v0

    return-wide v0
.end method

.method relativeOnOther(Lcom/horcrux/svg/SVGLength;)D
    .locals 4

    .line 424
    iget-object v0, p1, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 425
    sget-object v1, Lcom/horcrux/svg/SVGLength$UnitType;->NUMBER:Lcom/horcrux/svg/SVGLength$UnitType;

    if-ne v0, v1, :cond_0

    .line 426
    iget-wide v0, p1, Lcom/horcrux/svg/SVGLength;->value:D

    iget p1, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    float-to-double v2, p1

    :goto_0
    mul-double v0, v0, v2

    return-wide v0

    .line 427
    :cond_0
    sget-object v1, Lcom/horcrux/svg/SVGLength$UnitType;->PERCENTAGE:Lcom/horcrux/svg/SVGLength$UnitType;

    if-ne v0, v1, :cond_1

    .line 428
    iget-wide v0, p1, Lcom/horcrux/svg/SVGLength;->value:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->getCanvasDiagonal()D

    move-result-wide v2

    goto :goto_0

    .line 430
    :cond_1
    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualView;->fromRelativeFast(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v0

    return-wide v0
.end method

.method relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D
    .locals 4

    .line 404
    iget-object v0, p1, Lcom/horcrux/svg/SVGLength;->unit:Lcom/horcrux/svg/SVGLength$UnitType;

    .line 405
    sget-object v1, Lcom/horcrux/svg/SVGLength$UnitType;->NUMBER:Lcom/horcrux/svg/SVGLength$UnitType;

    if-ne v0, v1, :cond_0

    .line 406
    iget-wide v0, p1, Lcom/horcrux/svg/SVGLength;->value:D

    iget p1, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    :goto_0
    float-to-double v2, p1

    mul-double v0, v0, v2

    return-wide v0

    .line 407
    :cond_0
    sget-object v1, Lcom/horcrux/svg/SVGLength$UnitType;->PERCENTAGE:Lcom/horcrux/svg/SVGLength$UnitType;

    if-ne v0, v1, :cond_1

    .line 408
    iget-wide v0, p1, Lcom/horcrux/svg/SVGLength;->value:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->getCanvasWidth()F

    move-result p1

    goto :goto_0

    .line 410
    :cond_1
    invoke-direct {p0, p1}, Lcom/horcrux/svg/VirtualView;->fromRelativeFast(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v0

    return-wide v0
.end method

.method render(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 0

    .line 212
    invoke-virtual {p0, p1, p2, p3}, Lcom/horcrux/svg/VirtualView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    return-void
.end method

.method restoreCanvas(Landroid/graphics/Canvas;I)V
    .locals 0

    .line 241
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method saveAndSetupCanvas(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)I
    .locals 4

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 227
    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->mCTM:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/horcrux/svg/VirtualView;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 228
    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 229
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 230
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mCTM:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/horcrux/svg/VirtualView;->mInvCTM:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/horcrux/svg/VirtualView;->mCTMInvertible:Z

    return v0
.end method

.method saveDefinition()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/horcrux/svg/SvgView;->defineTemplate(Lcom/horcrux/svg/VirtualView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method setClientRect(Landroid/graphics/RectF;)V
    .locals 6

    .line 562
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 565
    :cond_0
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    if-nez p1, :cond_1

    return-void

    .line 569
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 570
    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 571
    iget-object v1, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 572
    iget-object v2, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 573
    iget-object v3, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 574
    iget-object v4, p0, Lcom/horcrux/svg/VirtualView;->mClientRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 575
    invoke-virtual {p0, p1, v0}, Lcom/horcrux/svg/VirtualView;->setMeasuredDimension(II)V

    .line 576
    instance-of v5, p0, Lcom/horcrux/svg/GroupView;

    if-nez v5, :cond_2

    .line 577
    invoke-virtual {p0, v1}, Lcom/horcrux/svg/VirtualView;->setLeft(I)V

    .line 578
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/VirtualView;->setTop(I)V

    .line 579
    invoke-virtual {p0, v3}, Lcom/horcrux/svg/VirtualView;->setRight(I)V

    .line 580
    invoke-virtual {p0, v4}, Lcom/horcrux/svg/VirtualView;->setBottom(I)V

    .line 582
    :cond_2
    iget-boolean v3, p0, Lcom/horcrux/svg/VirtualView;->mOnLayout:Z

    if-nez v3, :cond_3

    return-void

    .line 585
    :cond_3
    iget-object v3, p0, Lcom/horcrux/svg/VirtualView;->mContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v4, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 586
    invoke-virtual {v3, v4}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 587
    invoke-virtual {v3}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v3

    .line 589
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->getId()I

    move-result v4

    .line 588
    invoke-static {v4, v1, v2, p1, v0}, Lcom/facebook/react/uimanager/OnLayoutEvent;->obtain(IIIII)Lcom/facebook/react/uimanager/OnLayoutEvent;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    return-void
.end method

.method public setClipPath(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "clipPath"
    .end annotation

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/horcrux/svg/VirtualView;->mCachedClipPath:Landroid/graphics/Path;

    .line 289
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mClipPath:Ljava/lang/String;

    .line 290
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setClipRule(I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultInt = 0x1
        name = "clipRule"
    .end annotation

    .line 295
    iput p1, p0, Lcom/horcrux/svg/VirtualView;->mClipRule:I

    .line 296
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "display"
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mDisplay:Ljava/lang/String;

    .line 253
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setMarkerEnd(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerEnd"
    .end annotation

    .line 282
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMarkerEnd:Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setMarkerMid(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerMid"
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMarkerMid:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setMarkerStart(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "markerStart"
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMarkerStart:Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setMask(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "mask"
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMask:Ljava/lang/String;

    .line 265
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setMatrix(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "matrix"
    .end annotation

    .line 307
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    .line 308
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/facebook/react/bridge/ReadableType;->Array:Lcom/facebook/react/bridge/ReadableType;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReadableType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    invoke-interface {p1}, Lcom/facebook/react/bridge/Dynamic;->asArray()Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    sget-object v0, Lcom/horcrux/svg/VirtualView;->sRawMatrix:[F

    iget v1, p0, Lcom/horcrux/svg/VirtualView;->mScale:F

    invoke-static {p1, v0, v1}, Lcom/horcrux/svg/PropHelper;->toMatrixData(Lcom/facebook/react/bridge/ReadableArray;[FF)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 311
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    if-nez p1, :cond_0

    .line 312
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    .line 313
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mInvMatrix:Landroid/graphics/Matrix;

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    sget-object v0, Lcom/horcrux/svg/VirtualView;->sRawMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 316
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/horcrux/svg/VirtualView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/horcrux/svg/VirtualView;->mInvertible:Z

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const-string p1, "ReactNative"

    const-string v0, "RNSVG: Transform matrices must be of size 6"

    .line 318
    invoke-static {p1, v0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_2
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 322
    iget-object p1, p0, Lcom/horcrux/svg/VirtualView;->mInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    const/4 p1, 0x1

    .line 323
    iput-boolean p1, p0, Lcom/horcrux/svg/VirtualView;->mInvertible:Z

    .line 326
    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->invalidate()V

    .line 327
    invoke-direct {p0}, Lcom/horcrux/svg/VirtualView;->clearParentCache()V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "name"
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mName:Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setOnLayout(Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "onLayout"
    .end annotation

    .line 258
    iput-boolean p1, p0, Lcom/horcrux/svg/VirtualView;->mOnLayout:Z

    .line 259
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method public setOpacity(F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 1.0f
        name = "opacity"
    .end annotation

    .line 301
    iput p1, p0, Lcom/horcrux/svg/VirtualView;->mOpacity:F

    .line 302
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method

.method setPointerEvents(Lcom/facebook/react/uimanager/PointerEvents;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/horcrux/svg/VirtualView;->mPointerEvents:Lcom/facebook/react/uimanager/PointerEvents;

    return-void
.end method

.method public setResponsible(Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "responsible"
    .end annotation

    .line 332
    iput-boolean p1, p0, Lcom/horcrux/svg/VirtualView;->mResponsible:Z

    .line 333
    invoke-virtual {p0}, Lcom/horcrux/svg/VirtualView;->invalidate()V

    return-void
.end method
