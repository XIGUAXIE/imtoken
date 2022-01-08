.class final Lcom/helpscout/common/extensions/ViewExtensionsKt$throttledClick$1;
.super Ljava/lang/Object;
.source "ViewExtensions.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/common/extensions/ViewExtensionsKt;->throttledClick(Landroid/view/View;JLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $action:Lkotlin/jvm/functions/Function1;

.field final synthetic $this_throttledClick:Landroid/view/View;

.field final synthetic $throttler:Lcom/helpscout/common/utils/SimpleThrottler;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/helpscout/common/utils/SimpleThrottler;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/common/extensions/ViewExtensionsKt$throttledClick$1;->$this_throttledClick:Landroid/view/View;

    iput-object p2, p0, Lcom/helpscout/common/extensions/ViewExtensionsKt$throttledClick$1;->$throttler:Lcom/helpscout/common/utils/SimpleThrottler;

    iput-object p3, p0, Lcom/helpscout/common/extensions/ViewExtensionsKt$throttledClick$1;->$action:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/helpscout/common/extensions/ViewExtensionsKt$throttledClick$1;->$throttler:Lcom/helpscout/common/utils/SimpleThrottler;

    new-instance v1, Lcom/helpscout/common/extensions/ViewExtensionsKt$throttledClick$1$1;

    invoke-direct {v1, p0}, Lcom/helpscout/common/extensions/ViewExtensionsKt$throttledClick$1$1;-><init>(Lcom/helpscout/common/extensions/ViewExtensionsKt$throttledClick$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/utils/SimpleThrottler;->throttle(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
