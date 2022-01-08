.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$q;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c$q;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/c;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$b;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/e$b;

    invoke-virtual {v0, v1}, Lcom/helpscout/common/mvi/MviViewModel;->interpret(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
