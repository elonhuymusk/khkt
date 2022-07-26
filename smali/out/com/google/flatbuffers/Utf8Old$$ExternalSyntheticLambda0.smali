.class public final synthetic Lcom/google/flatbuffers/Utf8Old$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/flatbuffers/Utf8Old$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/flatbuffers/Utf8Old$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/flatbuffers/Utf8Old$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/flatbuffers/Utf8Old$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/flatbuffers/Utf8Old$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/flatbuffers/Utf8Old;->lambda$static$0()Lcom/google/flatbuffers/Utf8Old$Cache;

    move-result-object v0

    return-object v0
.end method
