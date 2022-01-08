.class final Lcom/helpscout/beacon/internal/presentation/extensions/a/l$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;JLkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/common/m;

.field final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/helpscout/beacon/internal/presentation/common/m;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/l$f;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/l$f;->b:Lcom/helpscout/beacon/internal/presentation/common/m;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/l$f;->c:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/l$f;->b:Lcom/helpscout/beacon/internal/presentation/common/m;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/extensions/a/l$f$a;

    invoke-direct {v1, p0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l$f$a;-><init>(Lcom/helpscout/beacon/internal/presentation/extensions/a/l$f;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/m;->a(Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
