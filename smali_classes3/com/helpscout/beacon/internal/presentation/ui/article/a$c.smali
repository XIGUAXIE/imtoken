.class final Lcom/helpscout/beacon/internal/presentation/ui/article/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/a;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/b;IZLcom/helpscout/beacon/internal/presentation/ui/article/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/article/a$b;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/a$b;I)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/a$b;

    iput p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/a$b;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/a$b;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/a$c;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
