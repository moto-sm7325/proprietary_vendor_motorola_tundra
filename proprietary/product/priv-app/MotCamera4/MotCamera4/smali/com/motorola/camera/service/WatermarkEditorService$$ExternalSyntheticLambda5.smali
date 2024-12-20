.class public final synthetic Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda5;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda5;->INSTANCE:Lcom/motorola/camera/service/WatermarkEditorService$$ExternalSyntheticLambda5;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/util/Size;

    sget p0, Lcom/motorola/camera/service/WatermarkEditorService;->AREA_RATIO:F

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
