.class public final Lio/sentry/adapters/SpanStatusSerializerAdapter;
.super Ljava/lang/Object;
.source "SpanStatusSerializerAdapter.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lio/sentry/SpanStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private final logger:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/sentry/adapters/SpanStatusSerializerAdapter;->logger:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public serialize(Lio/sentry/SpanStatus;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    new-instance p3, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lio/sentry/SpanStatus;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p3

    :goto_0
    return-object p2

    :catch_0
    move-exception p1

    .line 29
    iget-object p3, p0, Lio/sentry/adapters/SpanStatusSerializerAdapter;->logger:Lio/sentry/ILogger;

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error when serializing SpanStatus"

    invoke-interface {p3, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 15
    check-cast p1, Lio/sentry/SpanStatus;

    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/adapters/SpanStatusSerializerAdapter;->serialize(Lio/sentry/SpanStatus;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method