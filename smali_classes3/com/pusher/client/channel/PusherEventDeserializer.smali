.class public Lcom/pusher/client/channel/PusherEventDeserializer;
.super Ljava/lang/Object;
.source "PusherEventDeserializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/pusher/client/channel/PusherEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final GSON:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/pusher/client/channel/PusherEventDeserializer;->GSON:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/pusher/client/channel/PusherEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 18
    new-instance p2, Lcom/pusher/client/channel/PusherEvent;

    iget-object p3, p0, Lcom/pusher/client/channel/PusherEventDeserializer;->GSON:Lcom/google/gson/Gson;

    const-class v0, Ljava/util/Map;

    invoke-virtual {p3, p1, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p2, p1}, Lcom/pusher/client/channel/PusherEvent;-><init>(Ljava/util/Map;)V

    return-object p2
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/pusher/client/channel/PusherEventDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/pusher/client/channel/PusherEvent;

    move-result-object p1

    return-object p1
.end method
