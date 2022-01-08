.class final Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$n;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
        "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$n;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$n;->a:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;

    invoke-static {v0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;->a(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity;Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/CustomField;

    check-cast p2, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageActivity$n;->a(Lcom/helpscout/beacon/internal/domain/model/CustomField;Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
