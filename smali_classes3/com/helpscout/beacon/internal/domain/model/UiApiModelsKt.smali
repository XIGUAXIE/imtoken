.class public final Lcom/helpscout/beacon/internal/domain/model/UiApiModelsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u0019\u0010\u0001\u001a\u00020\u00008\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0001\u0010\u0002\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
        "emptyCustomFieldValue",
        "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
        "getEmptyCustomFieldValue",
        "()Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
        "beacon_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final emptyCustomFieldValue:Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/helpscout/beacon/internal/domain/model/UiApiModelsKt;->emptyCustomFieldValue:Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    return-void
.end method

.method public static final getEmptyCustomFieldValue()Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;
    .locals 1

    sget-object v0, Lcom/helpscout/beacon/internal/domain/model/UiApiModelsKt;->emptyCustomFieldValue:Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;

    return-object v0
.end method
