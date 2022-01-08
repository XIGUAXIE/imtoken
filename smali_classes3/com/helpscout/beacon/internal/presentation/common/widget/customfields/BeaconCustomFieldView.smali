.class public interface abstract Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\rH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/customfields/BeaconCustomFieldView;",
        "",
        "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
        "field",
        "",
        "bind",
        "(Lcom/helpscout/beacon/internal/domain/model/CustomField;)V",
        "showError",
        "()V",
        "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
        "customFieldValue",
        "bindValue",
        "(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V",
        "Lkotlin/Pair;",
        "getFieldAndValuePair",
        "()Lkotlin/Pair;",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract bind(Lcom/helpscout/beacon/internal/domain/model/CustomField;)V
.end method

.method public abstract bindValue(Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;)V
.end method

.method public abstract getFieldAndValuePair()Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lcom/helpscout/beacon/internal/domain/model/CustomField;",
            "Lcom/helpscout/beacon/internal/core/model/CustomFieldValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract showError()V
.end method
