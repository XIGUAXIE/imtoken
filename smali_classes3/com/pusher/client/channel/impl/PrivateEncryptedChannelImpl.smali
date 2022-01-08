.class public Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;
.super Lcom/pusher/client/channel/impl/ChannelImpl;
.source "PrivateEncryptedChannelImpl.java"

# interfaces
.implements Lcom/pusher/client/channel/PrivateEncryptedChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl$EncryptedReceivedData;
    }
.end annotation


# instance fields
.field private final authorizer:Lcom/pusher/client/Authorizer;

.field private final connection:Lcom/pusher/client/connection/impl/InternalConnection;

.field private disposeSecretBoxOpenerOnDisconnectedListener:Lcom/pusher/client/connection/ConnectionEventListener;

.field private secretBoxOpener:Lcom/pusher/client/crypto/nacl/SecretBoxOpener;

.field private secretBoxOpenerFactory:Lcom/pusher/client/crypto/nacl/SecretBoxOpenerFactory;


# direct methods
.method public constructor <init>(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;Lcom/pusher/client/util/Factory;Lcom/pusher/client/crypto/nacl/SecretBoxOpenerFactory;)V
    .locals 0

    .line 53
    invoke-direct {p0, p2, p4}, Lcom/pusher/client/channel/impl/ChannelImpl;-><init>(Ljava/lang/String;Lcom/pusher/client/util/Factory;)V

    .line 34
    new-instance p2, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl$1;

    invoke-direct {p2, p0}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl$1;-><init>(Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;)V

    iput-object p2, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->disposeSecretBoxOpenerOnDisconnectedListener:Lcom/pusher/client/connection/ConnectionEventListener;

    .line 54
    iput-object p1, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    .line 55
    iput-object p3, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->authorizer:Lcom/pusher/client/Authorizer;

    .line 56
    iput-object p5, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->secretBoxOpenerFactory:Lcom/pusher/client/crypto/nacl/SecretBoxOpenerFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->disposeSecretBoxOpener()V

    return-void
.end method

.method private authenticate()Ljava/lang/String;
    .locals 3

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->GSON:Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->getAuthResponse()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "auth"

    .line 93
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "shared_secret"

    .line 94
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {v0}, Lcom/pusher/client/util/internal/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->createSecretBoxOpener([B)V

    return-object v1

    .line 97
    :cond_0
    new-instance v0, Lcom/pusher/client/AuthorizationFailureException;

    const-string v1, "Didn\'t receive all the fields expected from the Authorizer, expected an auth and shared_secret."

    invoke-direct {v0, v1}, Lcom/pusher/client/AuthorizationFailureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/pusher/client/AuthorizationFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Lcom/pusher/client/AuthorizationFailureException;

    const-string v2, "Unable to parse response from Authorizer"

    invoke-direct {v1, v2, v0}, Lcom/pusher/client/AuthorizationFailureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    .line 104
    throw v0
.end method

.method private createSecretBoxOpener([B)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->secretBoxOpenerFactory:Lcom/pusher/client/crypto/nacl/SecretBoxOpenerFactory;

    invoke-virtual {v0, p1}, Lcom/pusher/client/crypto/nacl/SecretBoxOpenerFactory;->create([B)Lcom/pusher/client/crypto/nacl/SecretBoxOpener;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->secretBoxOpener:Lcom/pusher/client/crypto/nacl/SecretBoxOpener;

    .line 113
    invoke-direct {p0}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->setListenerToDisposeSecretBoxOpenerOnDisconnected()V

    return-void
.end method

.method private decryptMessage(Ljava/lang/String;)Lcom/pusher/client/channel/PusherEvent;
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-class v1, Ljava/util/Map;

    .line 179
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 181
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-string v1, "data"

    .line 182
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-class v3, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl$EncryptedReceivedData;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl$EncryptedReceivedData;

    .line 184
    iget-object v2, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->secretBoxOpener:Lcom/pusher/client/crypto/nacl/SecretBoxOpener;

    .line 185
    invoke-virtual {v0}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl$EncryptedReceivedData;->getCiphertext()[B

    move-result-object v3

    .line 186
    invoke-virtual {v0}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl$EncryptedReceivedData;->getNonce()[B

    move-result-object v0

    .line 184
    invoke-virtual {v2, v3, v0}, Lcom/pusher/client/crypto/nacl/SecretBoxOpener;->open([B[B)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Lcom/pusher/client/channel/PusherEvent;

    invoke-direct {v0, p1}, Lcom/pusher/client/channel/PusherEvent;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private disposeSecretBoxOpener()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->secretBoxOpener:Lcom/pusher/client/crypto/nacl/SecretBoxOpener;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/pusher/client/crypto/nacl/SecretBoxOpener;->clearKey()V

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->secretBoxOpener:Lcom/pusher/client/crypto/nacl/SecretBoxOpener;

    .line 197
    invoke-direct {p0}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->removeListenerToDisposeSecretBoxOpenerOnDisconnected()V

    :cond_0
    return-void
.end method

.method private getAuthResponse()Ljava/lang/String;
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {v0}, Lcom/pusher/client/connection/impl/InternalConnection;->getSocketId()Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->authorizer:Lcom/pusher/client/Authorizer;

    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/pusher/client/Authorizer;->authorize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyListenersOfDecryptFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 154
    invoke-virtual {p0, p1}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->getInterestedListeners(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pusher/client/channel/SubscriptionEventListener;

    .line 157
    check-cast v1, Lcom/pusher/client/channel/PrivateEncryptedChannelEventListener;

    invoke-interface {v1, p1, p2}, Lcom/pusher/client/channel/PrivateEncryptedChannelEventListener;->onDecryptionFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeListenerToDisposeSecretBoxOpenerOnDisconnected()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTED:Lcom/pusher/client/connection/ConnectionState;

    iget-object v2, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->disposeSecretBoxOpenerOnDisconnectedListener:Lcom/pusher/client/connection/ConnectionEventListener;

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/connection/impl/InternalConnection;->unbind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionEventListener;)Z

    return-void
.end method

.method private setListenerToDisposeSecretBoxOpenerOnDisconnected()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTED:Lcom/pusher/client/connection/ConnectionState;

    iget-object v2, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->disposeSecretBoxOpenerOnDisconnectedListener:Lcom/pusher/client/connection/ConnectionEventListener;

    invoke-interface {v0, v1, v2}, Lcom/pusher/client/connection/impl/InternalConnection;->bind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionEventListener;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V
    .locals 1

    .line 62
    instance-of v0, p2, Lcom/pusher/client/channel/PrivateEncryptedChannelEventListener;

    if-eqz v0, :cond_0

    .line 68
    invoke-super {p0, p1, p2}, Lcom/pusher/client/channel/impl/ChannelImpl;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only instances of PrivateEncryptedChannelEventListener can be bound to a private encrypted channel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getDisallowedNameExpressions()[Ljava/lang/String;
    .locals 1

    const-string v0, "^(?!private-encrypted-).*"

    .line 213
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prepareEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/pusher/client/channel/PusherEvent;
    .locals 0

    .line 134
    :try_start_0
    invoke-direct {p0, p2}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->decryptMessage(Ljava/lang/String;)Lcom/pusher/client/channel/PusherEvent;

    move-result-object p1
    :try_end_0
    .catch Lcom/pusher/client/crypto/nacl/AuthenticityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 138
    :catch_0
    invoke-direct {p0}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->disposeSecretBoxOpener()V

    .line 139
    invoke-direct {p0}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->authenticate()Ljava/lang/String;

    .line 142
    :try_start_1
    invoke-direct {p0, p2}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->decryptMessage(Ljava/lang/String;)Lcom/pusher/client/channel/PusherEvent;

    move-result-object p1
    :try_end_1
    .catch Lcom/pusher/client/crypto/nacl/AuthenticityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const-string p2, "Failed to decrypt message."

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->notifyListenersOfDecryptFailure(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 218
    iget-object v1, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[Private Encrypted Channel: name=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSubscribeMessage()Ljava/lang/String;
    .locals 4

    .line 73
    invoke-direct {p0}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->authenticate()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 77
    iget-object v2, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->name:Ljava/lang/String;

    const-string v3, "channel"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "auth"

    .line 78
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "event"

    const-string v3, "pusher:subscribe"

    .line 82
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 83
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateState(Lcom/pusher/client/channel/ChannelState;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcom/pusher/client/channel/impl/ChannelImpl;->updateState(Lcom/pusher/client/channel/ChannelState;)V

    .line 125
    sget-object v0, Lcom/pusher/client/channel/ChannelState;->UNSUBSCRIBED:Lcom/pusher/client/channel/ChannelState;

    if-ne p1, v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;->disposeSecretBoxOpener()V

    :cond_0
    return-void
.end method
