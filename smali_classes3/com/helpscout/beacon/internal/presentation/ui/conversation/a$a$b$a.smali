.class final Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b;->a(Ljava/util/List;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;

.field final synthetic b:Lkotlin/jvm/functions/Function2;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b$a;->a:Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b$a;->b:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b$a;->b:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b$a;->a:Lcom/helpscout/beacon/internal/domain/model/BeaconAttachment;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/a$a$b$a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
